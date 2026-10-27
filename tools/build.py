#!/usr/bin/env python3
"""Builds the textures, core.lua, supermod.xml and english.json of this mod.

    python3 tools/build.py [--game-dir DIR]

Needs luajit, ImageMagick (magick) and Pillow. The vanilla diffuse textures are read straight out of the game bundles
(same format knowledge as BeardLib-Editor/Tools/packages_txt.py: bundle_db.blb + <bundle>_h.bundle headers, the files are
zlib compressed DDS), recolored and written back as DXT5 .texture files. The vanilla material layout of the parts comes
from skinlib/class/fix_original_skin.lua.

Edit SKINS below to change colors, names or the covered weapons.
"""
import argparse
import glob
import json
import os
import struct
import subprocess
import sys
import tempfile
import zlib

import numpy as np
from PIL import Image, ImageOps

MOD_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.dont_write_bytecode = True  # packages_txt lives in another mod, do not litter its folder with __pycache__
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(MOD_DIR)), "mods", "BeardLib-Editor", "Tools"))
import packages_txt as pk  # noqa: E402


def wood_mask(img):
    """0..1 per pixel: 1 for the saturated red/brown of wood and grips, 0 for the gray of metal."""
    hsv = np.asarray(img.convert("RGB").convert("HSV")).astype(np.float32)
    hue, sat = hsv[..., 0], hsv[..., 1]
    reddish = (hue <= 40) | (hue >= 205)  # PIL hue is 0..255
    return np.clip((sat - 28) / 22, 0, 1) * reddish


def blend(base, other, mask):
    """other where mask is 1, base where it is 0"""
    m = mask[..., None]
    out = np.asarray(base.convert("RGB")).astype(np.float32) * (1 - m) + np.asarray(other.convert("RGB")).astype(np.float32) * m
    return Image.fromarray(out.round().astype(np.uint8))


def midnight(img):
    """Metal untouched, wood and grips lacquered in sharply separated black and violet diagonal stripes, the grain stays visible."""
    gray = np.asarray(ImageOps.autocontrast(ImageOps.grayscale(img.convert("RGB")), cutoff=1)).astype(np.float32) / 255
    height, width = gray.shape
    y, x = np.indices(gray.shape, dtype=np.float32)
    band = ((x + 0.50 * y) / (width / STRIPES)) % 1.0  # 0..1 inside one black+violet period
    edge = 2.0 / width * STRIPES  # about 2 px of anti aliasing
    violet_amount = np.clip((VIOLET_SHARE - band) / edge + 0.5, 0, 1) * np.clip(band / edge + 0.5, 0, 1)
    black = np.array([2, 1, 5], dtype=np.float32) + np.array([14, 8, 22], dtype=np.float32) * (gray ** 1.4)[..., None]
    violet = np.array([24, 5, 52], dtype=np.float32) + np.array([78, 38, 124], dtype=np.float32) * (gray ** 1.2)[..., None]
    lacquer = black * (1 - violet_amount[..., None]) + violet * violet_amount[..., None]
    return blend(img, Image.fromarray(lacquer.clip(0, 255).round().astype(np.uint8)), wood_mask(img))


def blackout(img):
    """Blackened metal and black plastic grips (the checkering stays visible as a slightly lighter dark gray)."""
    gray = np.asarray(ImageOps.autocontrast(ImageOps.grayscale(img.convert("RGB")), cutoff=1)).astype(np.float32) / 255
    black = np.array([1, 1, 2], dtype=np.float32)
    grey = np.array([22, 23, 28], dtype=np.float32)
    blued = black + (grey - black) * (gray ** 1.8)[..., None]
    plastic_grey = np.array([46, 46, 50], dtype=np.float32)
    plastic = black + (plastic_grey - black) * (gray ** 1.3)[..., None]
    return blend(Image.fromarray(blued.round().astype(np.uint8)), Image.fromarray(plastic.round().astype(np.uint8)), wood_mask(img))


def gold(img):
    """Gold plated metal (grips and wood stay as they are): grayscale mapped onto a dark brown -> gold -> light gold gradient."""
    gray = ImageOps.autocontrast(ImageOps.grayscale(img.convert("RGB")), cutoff=1)
    plated = ImageOps.colorize(gray, black="#2e1f04", mid="#c9962b", white="#fff0a8")
    return blend(plated, img, wood_mask(img))


SKINS = [
    {
        "id": "bangl_ws_mosin_midnight", "suffix": "midnight", "weapon": "mosin", "factory": "wpn_fps_snp_mosin",
        "recolor": midnight, "price": 50, "rarity": "COMMON",
        "name": "Midnight Lacquer", "desc": "Hand lacquered in the darkest violet, the steel left as it was",
    },
    {
        "id": "bangl_ws_kar98k_midnight", "suffix": "midnight", "weapon": "kar_98k", "factory": "wpn_fps_snp_kar_98k",
        "recolor": midnight, "price": 50, "rarity": "COMMON",
        "name": "Midnight Lacquer", "desc": "Hand lacquered in the darkest violet, the steel left as it was",
    },
    {
        "id": "bangl_ws_lee_enfield_midnight", "suffix": "midnight", "weapon": "lee_enfield", "factory": "wpn_fps_snp_lee_enfield",
        "recolor": midnight, "price": 50, "rarity": "COMMON",
        "name": "Midnight Lacquer", "desc": "Hand lacquered in the darkest violet, the steel left as it was",
    },
    {
        "id": "bangl_ws_m1903_midnight", "suffix": "midnight", "weapon": "m1903", "factory": "wpn_fps_snp_m1903",
        "recolor": midnight, "price": 50, "rarity": "COMMON",
        "name": "Midnight Lacquer", "desc": "Hand lacquered in the darkest violet, the steel left as it was",
        "exclude_parts": ("wpn_fps_snp_m1903_s_cheek_rest",),  # leather, not wood
    },
    {
        "id": "bangl_ws_m1911_gold", "suffix": "gold", "weapon": "m1911", "factory": "wpn_fps_pis_m1911",
        "recolor": gold, "price": 50, "rarity": "RARE",
        "name": "Gold Standard", "desc": "Presented to officers who never had to use it",
        "exclude_parts": ("wpn_fps_pis_m1911_b_standard",),  # the barrel looking out of the slide stays vanilla
    },
    {
        "id": "bangl_ws_m1911_black", "suffix": "black", "weapon": "m1911", "factory": "wpn_fps_pis_m1911",
        "recolor": blackout, "price": 50, "rarity": "UNCOMMON",
        "name": "Blackout", "desc": "Blued to a flat black, no shine to give away the position",
        "exclude_parts": ("wpn_fps_pis_m1911_b_standard",),
    },
]
# hand painted M1911 skins taken over from skinpack_akashi (textures copied from AKASHI_DIR, ids kept for existing inventories)
AKASHI_DIR = os.path.join(MOD_DIR, "assets", "prebuilt")  # hand made textures, shipped as they are (assets/gen is wiped by every build)
AKASHI_FPS_DIR = "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/"
AKASHI_SKINS = [
    {"id": "blood", "name": "Blood", "desc": "Abgenutzt und blutverschmiert."},
    {"id": "gold", "name": "Royal Gold", "desc": "Vergoldet, graviert, mit Elfenbeingriff."},
]
# part -> fps material name ("Default" = body and magazine)
AKASHI_PARTS = [
    ("body_standard", "Default"),
    ("m_standard", "Default"),
    ("b_standard", "wpn_fps_pis_m1911"),
    ("sl_standard", "wpn_fps_pis_m1911"),
    ("dh_hammer", "wpn_fps_pis_m1911"),
]
STRIPES = 5  # black+violet periods across the texture width
VIOLET_SHARE = 0.25  # part of a period that is violet
KEEP_VANILLA = ("wpn_fps_bullets_df", "30_06_df")  # shared by several weapons, not recolored

DUMP_LUA = """
SkinLib = {}
dofile("@FIX@")
local function ser(v)
  if type(v) == "table" then
    local out = {}
    if #v > 0 then for _, x in ipairs(v) do out[#out+1] = ser(x) end return "[" .. table.concat(out, ",") .. "]" end
    for k, x in pairs(v) do out[#out+1] = string.format("%q:%s", k, ser(x)) end
    return "{" .. table.concat(out, ",") .. "}"
  end
  return string.format("%q", tostring(v))
end
local keep = {}
for id, d in pairs(SkinLib._fix_tbl) do
  for _, prefix in ipairs({@PREFIXES@}) do
    if id:find("^" .. prefix) then keep[id] = d end
  end
end
io.write(ser(keep))
"""


def skipped(skin, part_id):
    return not part_id.startswith(skin["factory"] + "_") or part_id in skin.get("exclude_parts", ())


def load_parts(game_dir, factories):
    fix = os.path.join(game_dir, "mods", "skinlib", "class", "fix_original_skin.lua")
    prefixes = ",".join('"%s_"' % f for f in factories)
    with tempfile.NamedTemporaryFile("w", suffix=".lua", delete=False) as f:
        f.write(DUMP_LUA.replace("@FIX@", fix).replace("@PREFIXES@", prefixes))
    try:
        return json.loads(subprocess.check_output(["luajit", f.name]))
    finally:
        os.unlink(f.name)


def find_entries(assets, wanted):
    """texture path -> (bundle file, address, length)"""
    db = pk.load_database(os.path.join(assets, "bundle_db.blb"))
    ext = pk.hash64("texture")
    ids = {}
    for path in wanted:
        h = pk.hash64(path)
        found = [i for i, (e, ph) in db.items() if ph == h and e == ext]
        if not found:
            sys.exit("not in bundle_db: " + path)
        ids[found[0]] = path
    result = {}
    for header_file in sorted(glob.glob(os.path.join(assets, "*_h.bundle"))):
        header = pk.read_header(header_file)
        ref = struct.unpack_from("<I", header, 0)[0]
        base = 4
        if struct.unpack_from("<Q", header, 4)[0] == 0 and struct.unpack_from("<Q", header, 12)[0] != 0:
            base = 12
        count = struct.unpack_from("<Q", header, base)[0]
        if not count:
            continue
        start = struct.unpack_from("<Q", header, base + 16)[0] + 4
        if (ref - start) // count != 12 or (ref - start) % count:
            continue  # only the layout with (id, address, length) is needed for the weapon textures
        for i in range(count):
            entry_id, address, length = struct.unpack_from("<III", header, start + i * 12)
            if entry_id in ids and ids[entry_id] not in result:
                result[ids[entry_id]] = (header_file[:-len("_h.bundle")] + ".bundle", address, length)
    missing = [p for p in wanted if p not in result]
    if missing:
        sys.exit("not found in any bundle: " + ", ".join(missing))
    return result


def read_dds(entry):
    bundle, address, length = entry
    with open(bundle, "rb") as f:
        f.seek(address)
        data = f.read(length)
    if data[:4] != b"DDS ":
        data = zlib.decompressobj().decompress(data)
    return data


def write_texture(img, out_path):
    with tempfile.TemporaryDirectory() as tmp:
        png = os.path.join(tmp, "t.png")
        img.save(png)
        subprocess.check_call(["magick", png, "-define", "dds:compression=dxt5", "-define", "dds:mipmaps=%d" % mip_count(img.size),
                               "dds:" + out_path])


def mip_count(size):
    return max(size).bit_length()


def recolor_texture(dds_bytes, func):
    with tempfile.TemporaryDirectory() as tmp:
        src = os.path.join(tmp, "src.dds")
        with open(src, "wb") as f:
            f.write(dds_bytes)
        img = Image.open(src).convert("RGBA")
    alpha = img.getchannel("A")
    out = func(img).convert("RGB")
    out.putalpha(alpha)
    return out


def lua_str(s):
    return '"%s"' % s


def lua_opt(s):
    return lua_str(s) if s else "nil"


def main():
    parser = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    parser.add_argument("--game-dir", default=os.path.dirname(os.path.dirname(MOD_DIR)))
    args = parser.parse_args()
    game_dir = os.path.abspath(args.game_dir)
    assets = os.path.join(game_dir, "assets")

    for skin in AKASHI_SKINS:  # before anything is deleted
        source = os.path.join(AKASHI_DIR, "akashi_m1911_%s_df.texture" % skin["id"])
        if not os.path.isfile(source):
            sys.exit("missing texture source: " + source)

    parts = load_parts(game_dir, [s["factory"] for s in SKINS])

    # which diffuse textures are needed per skin
    needed = {}
    for skin in SKINS:
        for part_id, data in parts.items():
            if skipped(skin, part_id):
                continue
            for view in ("fps", "tps"):
                for material in data.get(view, {}).values():
                    diffuse = material.get("diffuse_texture")
                    if diffuse and not diffuse.endswith(KEEP_VANILLA):
                        needed.setdefault(skin["id"], set()).add(diffuse)

    for old in glob.glob(os.path.join(MOD_DIR, "assets", "gen", "*.texture")):
        os.remove(old)  # drop textures of skins that no longer exist

    all_textures = sorted(set().union(*needed.values()))
    entries = find_entries(assets, all_textures)

    asset_lines = []
    for skin in SKINS:
        for diffuse in sorted(needed[skin["id"]]):
            directory, name = diffuse.rsplit("/", 1)
            new_name = name[:-len("_df")] + "_%s_df" % skin["suffix"]
            out = os.path.join(MOD_DIR, "assets", "gen", new_name + ".texture")
            os.makedirs(os.path.dirname(out), exist_ok=True)
            write_texture(recolor_texture(read_dds(entries[diffuse]), skin["recolor"]), out)
            asset_lines.append('        <file path="assets/gen/%s.texture" name="%s/%s.texture" />' % (new_name, directory, new_name))
            print("wrote", out)

    for skin in AKASHI_SKINS:
        new_name = "akashi_m1911_%s_df" % skin["id"]
        asset_lines.append('        <file path="assets/prebuilt/%s.texture" name="%s%s.texture" />' % (new_name, AKASHI_FPS_DIR, new_name))

    lua = ['Hooks:Add("SkinLibCollectData", "BangL.WeaponSkins.SkinLibCollectData",', "    function(self)"]
    loc = {}
    for skin in SKINS:
        suffix = skin["suffix"]
        lua.append("        self.RegisterSkin(")
        lua.append("            SL_Skin:new(%s, %s)" % (lua_str(skin["id"]), lua_str(skin["weapon"])))
        lua.append("                :set_name_id(%s)" % lua_str(skin["id"]))
        lua.append("                :set_weapon_desc_id(%s)" % lua_str(skin["id"] + "_desc"))
        lua.append("                :set_weapon_name_id(%s)" % lua_str(skin["id"] + "_name"))
        lua.append("                :set_gold_price(%d)" % skin["price"])
        lua.append("                :set_droppable(true)")
        lua.append("                :set_rarity(LootDropTweakData.RARITY_%s)" % skin["rarity"])
        lua.append("                :add_parts({")
        part_lines = []
        for part_id, data in sorted(parts.items()):
            if skipped(skin, part_id):
                continue
            materials = []
            for view, method in (("fps", "add_fps_material"), ("tps", "add_tps_material")):
                for material_name, m in sorted(data.get(view, {}).items()):
                    diffuse = m.get("diffuse_texture")
                    if not diffuse:
                        continue  # e.g. scope glass: nothing to recolor
                    if not diffuse.endswith(KEEP_VANILLA):
                        directory, name = diffuse.rsplit("/", 1)
                        diffuse = "%s/%s_%s_df" % (directory, name[:-len("_df")], suffix)
                    args = [lua_str(material_name), lua_opt(m.get("bump_normal_texture")), lua_str(diffuse), lua_opt(m.get("material_texture"))]
                    if m.get("reflection_texture"):
                        args.append(lua_str(m["reflection_texture"]))
                    materials.append("                        :%s(%s)" % (method, ",\n                            ".join(args)))
            if not materials:
                continue
            part_lines.append("                    SL_Part:new(%s, %s, %s)\n%s" % (
                lua_str("%s_%s" % (part_id, suffix)), lua_str(skin["factory"]), lua_str(part_id), "\n".join(materials)))
        lua.append(",\n".join(part_lines))
        lua.append("                })")
        lua.append("        )")
        loc[skin["id"]] = skin["name"]
        loc[skin["id"] + "_desc"] = skin["desc"]
        loc[skin["id"] + "_name"] = skin["name"]
    for skin in AKASHI_SKINS:
        skin_id = "akashi_ws_m1911_" + skin["id"]
        lua.append("        self.RegisterSkin(")
        lua.append("            SL_Skin:new(%s, \"m1911\")" % lua_str(skin_id))
        lua.append("                :set_name_id(%s)" % lua_str(skin_id))
        lua.append("                :set_weapon_desc_id(%s)" % lua_str(skin_id + "_desc"))
        lua.append("                :set_weapon_name_id(%s)" % lua_str(skin_id + "_name"))
        lua.append("                :set_gold_price(50)")
        lua.append("                :set_droppable(true)")
        lua.append("                :set_rarity(LootDropTweakData.RARITY_COMMON)")
        lua.append("                :add_parts({")
        part_lines = []
        for part, material in AKASHI_PARTS:
            part_lines.append("""                    SL_Part:new("wpn_fps_pis_m1911_%s_akashi_%s", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_%s")
                        :add_fps_material(%s,
                            %s,
                            %s,
                            %s)""" % (part, skin["id"], part, lua_str(material),
                                      lua_str(AKASHI_FPS_DIR + "wpn_fps_pis_m1911_nm"),
                                      lua_str(AKASHI_FPS_DIR + "akashi_m1911_%s_df" % skin["id"]),
                                      lua_str(AKASHI_FPS_DIR + "wpn_fps_pis_m1911_gsm")))
        lua.append(",\n".join(part_lines))
        lua.append("                })")
        lua.append("        )")
        loc[skin_id] = skin["name"]
        loc[skin_id + "_desc"] = skin["desc"]
        loc[skin_id + "_name"] = skin["name"]
    lua.extend(["    end", ")", ""])

    with open(os.path.join(MOD_DIR, "core.lua"), "w") as f:
        f.write("\n".join(lua))
    with open(os.path.join(MOD_DIR, "english.json"), "w") as f:
        json.dump(loc, f, indent=4)
        f.write("\n")
    with open(os.path.join(MOD_DIR, "supermod.xml"), "w") as f:
        f.write("""<?xml version="1.0"?>
<mod
    name="BangL's SkinPack (SkinLib)" image="icon.png"
    description="Midnight Lacquer skin for all sniper rifles (Mosin Nagant, Kar98k, Lee-Enfield, M1903) and Gold Standard, Blackout, Blood, Royal Gold and Neon Carbon skins for the Colt M1911 (the last three by Akashi)."
    author="BangL, Akashi9210"
    version="1"
    disable_safe_mode="true"
    priority="111"
>
    <updates>
        <update identifier="bangls-skinpack">
            <host meta="https://raw.githubusercontent.com/BangL/raid-mods-meta/main/bangls-skinpack.json"/>
        </update>
    </updates>
    <hooks>
        <pre hook_id="lib/setups/setup" script_path="core.lua" />
    </hooks>

    <dependencies>
        <dependency name="SkinLib" download_url="https://api.modworkshop.net/mods/55400/download" />
    </dependencies>

    <localization default="english">
        <loc file="english.json" language="english" />
    </localization>

    <assets>
%s
    </assets>
</mod>
""" % "\n".join(asset_lines))


if __name__ == "__main__":
    main()
