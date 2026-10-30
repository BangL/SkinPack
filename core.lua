Hooks:Add("SkinLibCollectData", "BangL.WeaponSkins.SkinLibCollectData",
    function(self)
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_mosin_midnight", "mosin")
                :set_name_id("bangl_ws_mosin_midnight")
                :set_weapon_desc_id("bangl_ws_mosin_midnight_desc")
                :set_weapon_name_id("bangl_ws_mosin_midnight_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_COMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_snp_mosin_b_long_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_b_long")
                        :add_fps_material("wpn_fps_snp_mosin_b_long",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_b_long_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_b_long_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_b_long_gsm")
                        :add_tps_material("wpn_third_snp_mosin_b_long",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_b_long_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_b_long_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_b_long_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_b_standard_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_b_standard")
                        :add_fps_material("wpn_fps_snp_mosin_b_long",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_b_long_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_b_long_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_b_long_gsm")
                        :add_tps_material("wpn_third_snp_mosin_b_long",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_b_long_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_b_long_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_b_long_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_body_grip_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_body_grip")
                        :add_fps_material("wpn_fps_snp_mosin_body_grip",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_grip_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_grip_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_grip_gsm")
                        :add_fps_material("wpn_fps_snp_mosin_upper",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_gsm")
                        :add_tps_material("wpn_third_snp_mosin_body_grip",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_grip_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_grip_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_grip_gsm")
                        :add_tps_material("wpn_third_snp_mosin_upper",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_body_standard_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_body_standard")
                        :add_fps_material("wpn_fps_snp_mosin_body_standard",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_standard_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_standard_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_standard_gsm")
                        :add_fps_material("wpn_fps_snp_mosin_upper",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_gsm")
                        :add_tps_material("wpn_third_snp_mosin_body_standard",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_standard_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_standard_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_standard_gsm")
                        :add_tps_material("wpn_third_snp_mosin_upper",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_body_target_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_body_target")
                        :add_fps_material("wpn_fps_snp_mosin_body_target",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_target_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_target_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_body_target_gsm")
                        :add_fps_material("wpn_fps_snp_mosin_upper",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_upper_gsm")
                        :add_tps_material("wpn_third_snp_mosin_body_target",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_target_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_target_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_body_target_gsm")
                        :add_tps_material("wpn_third_snp_mosin_upper",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_upper_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_bolt_standard_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_bolt_standard")
                        :add_fps_material("wpn_fps_snp_mosin_bolt_standard",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_bolt_standard_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_bolt_standard_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_bolt_standard_gsm")
                        :add_tps_material("wpn_third_snp_mosin_bolt_standard",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_bolt_standard_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_bolt_standard_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_bolt_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_bullet_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_bullet")
                        :add_fps_material("wpn_fps_snp_mosin_m_standard",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil),
                    SL_Part:new("wpn_fps_snp_mosin_clip_standard_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_clip_standard")
                        :add_fps_material("wpn_fps_snp_mosin_m_standard",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_m_standard_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_m_standard_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_m_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_dh_standard_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_dh_standard")
                        :add_fps_material("wpn_fps_snp_mosin_bolt_standard",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_bolt_standard_nm",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_bolt_standard_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_mosin_pts/textures/wpn_fps_snp_mosin_bolt_standard_gsm")
                        :add_tps_material("wpn_third_snp_mosin_bolt_standard",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_bolt_standard_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_bolt_standard_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_bolt_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_mosin_m_standard_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_m_standard")
                        :add_fps_material("wpn_fps_snp_mosin_m_standard",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil),
                    SL_Part:new("wpn_fps_snp_mosin_o_scope_midnight", "wpn_fps_snp_mosin", "wpn_fps_snp_mosin_o_scope")
                        :add_tps_material("wpn_third_snp_mosin_o_scope",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_o_scope_nm",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_o_scope_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_mosin_pts/textures/wpn_third_snp_mosin_o_scope_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_kar98k_midnight", "kar_98k")
                :set_name_id("bangl_ws_kar98k_midnight")
                :set_weapon_desc_id("bangl_ws_kar98k_midnight_desc")
                :set_weapon_name_id("bangl_ws_kar98k_midnight_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_COMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_snp_kar_98k_b_long_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_b_long")
                        :add_fps_material("wpn_fps_snp_kar_98k_b_long",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_b_long_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_b_long_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_b_long_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k_b_long",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_b_long_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_b_long_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_b_long_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_b_standard_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_b_standard")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_body_grip_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_body_grip")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_fps_material("wpn_fps_snp_kar_98k_body_grip",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_body_grip_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_body_grip_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_body_grip_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k_body_grip",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_body_grip_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_body_grip_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_body_grip_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_body_standard_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_body_standard")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_bolt_standard_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_bolt_standard")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_bullet_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_bullet")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_bullets_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_bullets")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_dh_standard_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_dh_standard")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_firepin_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_firepin")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_m_extended_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_m_extended")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_fps_material("wpn_fps_snp_kar_98k_m_extended",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_m_extended_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_m_extended_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_m_extended_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k_m_extended",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_m_extended_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_m_extended_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_m_extended_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_m_long_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_m_long")
                        :add_fps_material("wpn_fps_snp_kar_98k_m_long",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_m_long_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_m_long_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_m_long_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k_m_long",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_m_long_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_m_long_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_m_long_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_o_scope_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_o_scope")
                        :add_fps_material("wpn_fps_snp_kar_98k_o_scope",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_o_scope_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_o_scope_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_o_scope_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_pad_big_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_pad_big")
                        :add_fps_material("wpn_fps_snp_kar_98k_pad_big",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_pad_big_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_pad_big_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_pad_big_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k_pad_big",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_pad_big_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_pad_big_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_pad_big_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_pad_standard_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_pad_standard")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_strip_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_strip")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm"),
                    SL_Part:new("wpn_fps_snp_kar_98k_trigger_midnight", "wpn_fps_snp_kar_98k", "wpn_fps_snp_kar_98k_trigger")
                        :add_fps_material("wpn_fps_snp_kar_98k",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_fps_snp_kar_98k_pts/textures/wpn_fps_snp_kar_98k_gsm")
                        :add_tps_material("wpn_third_snp_kar_98k",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_nm",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_midnight_df",
                            "units/upd_003/weapons/wpn_third_snp_kar_98k_pts/textures/wpn_third_snp_kar_98k_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_lee_enfield_midnight", "lee_enfield")
                :set_name_id("bangl_ws_lee_enfield_midnight")
                :set_weapon_desc_id("bangl_ws_lee_enfield_midnight_desc")
                :set_weapon_name_id("bangl_ws_lee_enfield_midnight_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_COMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_snp_lee_enfield_b_long_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_b_long")
                        :add_fps_material("wpn_fps_snp_lee_enfield_b_long",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_b_long_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_b_long_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_b_long_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_b_long",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_b_long_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_b_long_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_b_long_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_b_standard_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_b_standard")
                        :add_fps_material("wpn_fps_snp_lee_enfield_b_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_b_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_b_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_b_standard_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_b_standard",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_b_standard_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_b_standard_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_b_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_body_standard_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_body_standard")
                        :add_fps_material("wpn_fps_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_bullet_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_bullet")
                        :add_fps_material("wpn_fps_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_cheek_rest_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_cheek_rest")
                        :add_fps_material("wpn_fps_snp_lee_enfield_cheek_rest",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_cheek_rest_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_cheek_rest_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_cheek_rest_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_cheek_rest",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_cheek_rest_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_cheek_rest_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_cheek_rest_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_dh_standard_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_dh_standard")
                        :add_fps_material("wpn_fps_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_firepin_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_firepin")
                        :add_fps_material("wpn_fps_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_body_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_m_extended_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_m_extended")
                        :add_fps_material("wpn_fps_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_gsm")
                        :add_fps_material("wpn_fps_snp_lee_enfield_m_extended",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_m_extended_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_m_extended_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_m_extended_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_m_extended",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_m_extended_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_m_extended_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_m_extended_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_m_standard_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_m_standard")
                        :add_fps_material("wpn_fps_snp_lee_enfield_body_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_body_standard_gsm")
                        :add_fps_material("wpn_fps_snp_lee_enfield_m_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_m_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_m_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_m_standard_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_m_standard",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_m_standard_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_m_standard_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_m_standard_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_ns_coned_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_ns_coned")
                        :add_fps_material("wpn_fps_snp_lee_enfield_ns_coned",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_ns_coned_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_ns_coned_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_ns_coned_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_ns_coned",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_ns_coned_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_ns_coned_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_ns_coned_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_pad_buffered_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_pad_buffered")
                        :add_fps_material("wpn_fps_snp_lee_enfield_pad_buffered",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_pad_buffered_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_pad_buffered_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_pad_buffered_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_pad_buffered",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_pad_buffered_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_pad_buffered_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_pad_buffered_gsm"),
                    SL_Part:new("wpn_fps_snp_lee_enfield_s_standard_midnight", "wpn_fps_snp_lee_enfield", "wpn_fps_snp_lee_enfield_s_standard")
                        :add_fps_material("wpn_fps_snp_lee_enfield_s_standard",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_s_standard_nm",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_s_standard_midnight_df",
                            "units/upd_015/weapons/wpn_fps_snp_lee_enfield_pts/textures/wpn_fps_snp_lee_enfield_s_standard_gsm")
                        :add_tps_material("wpn_third_snp_lee_enfield_s_standard",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_s_standard_nm",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_s_standard_midnight_df",
                            "units/upd_015/weapons/wpn_third_snp_lee_enfield_pts/textures/wpn_third_snp_lee_enfield_s_standard_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_m1903_midnight", "m1903")
                :set_name_id("bangl_ws_m1903_midnight")
                :set_weapon_desc_id("bangl_ws_m1903_midnight_desc")
                :set_weapon_name_id("bangl_ws_m1903_midnight_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_COMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_snp_m1903_b_standard_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_b_standard")
                        :add_fps_material("wpn_fps_snp_m1903_b_standard",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_b_standard_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_b_standard_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_b_standard_gsm")
                        :add_tps_material("wpn_third_snp_m1903",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_body_type_c_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_body_type_c")
                        :add_fps_material("wpn_fps_snp_m1903_body_type_c",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_body_type_c_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_body_type_c_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_body_type_c_gsm")
                        :add_fps_material("wpn_fps_snp_m1903_upper",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_gsm")
                        :add_tps_material("wpn_third_snp_m1903",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_body_type_s_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_body_type_s")
                        :add_fps_material("wpn_fps_snp_m1903_body_type_s",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_body_type_s_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_body_type_s_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_body_type_s_gsm")
                        :add_fps_material("wpn_fps_snp_m1903_upper",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_gsm")
                        :add_tps_material("wpn_third_snp_m1903",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_gsm")
                        :add_tps_material("wpn_third_snp_m1903_body_type_s",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_body_type_s_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_body_type_s_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_body_type_s_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_bolt_firepin_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_bolt_firepin")
                        :add_fps_material("wpn_fps_snp_m1903_upper",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_gsm")
                        :add_tps_material("wpn_third_snp_m1903",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_bolt_standard_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_bolt_standard")
                        :add_fps_material("wpn_fps_snp_m1903_upper",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_gsm")
                        :add_tps_material("wpn_third_snp_m1903",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_dh_standard_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_dh_standard")
                        :add_fps_material("wpn_fps_snp_m1903_upper",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_gsm")
                        :add_tps_material("wpn_third_snp_m1903",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_extra_follower_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_extra_follower")
                        :add_fps_material("wpn_fps_snp_m1903_upper",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_upper_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_m_extended_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_m_extended")
                        :add_fps_material("mtr_bullets",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil)
                        :add_fps_material("wpn_fps_snp_m1903_m_extended",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_m_extended_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_m_extended_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_m_extended_gsm")
                        :add_tps_material("wpn_third_snp_m1903_m_extended",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_m_extended_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_m_extended_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_m_extended_gsm"),
                    SL_Part:new("wpn_fps_snp_m1903_m_standard_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_m_standard")
                        :add_fps_material("mtr_bullets",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil),
                    SL_Part:new("wpn_fps_snp_m1903_ns_mclean_midnight", "wpn_fps_snp_m1903", "wpn_fps_snp_m1903_ns_mclean")
                        :add_fps_material("wpn_fps_snp_m1903_ns_mclean",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_ns_mclean_nm",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_ns_mclean_midnight_df",
                            "units/vanilla/weapons/wpn_fps_snp_m1903_pts/textures/wpn_fps_snp_m1903_ns_mclean_gsm")
                        :add_tps_material("wpn_third_snp_m1903_ns_mclean",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_ns_mclean_nm",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_ns_mclean_midnight_df",
                            "units/vanilla/weapons/wpn_third_snp_m1903_pts/textures/wpn_third_snp_m1903_ns_mclean_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_m1911_gold", "m1911")
                :set_name_id("bangl_ws_m1911_gold")
                :set_weapon_desc_id("bangl_ws_m1911_gold_desc")
                :set_weapon_name_id("bangl_ws_m1911_gold_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_RARE)
                :add_parts({
                    SL_Part:new("wpn_fps_pis_m1911_body_standard_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_body_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_dh_hammer_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_dh_hammer")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_fg_tommy_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_fg_tommy")
                        :add_fps_material("wpn_fps_pis_m1911_fg_tommy",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_fg_tommy_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_fg_tommy_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_fg_tommy_gsm")
                        :add_tps_material("wpn_third_pis_m1911_fg_tommy",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_fg_tommy_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_fg_tommy_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_fg_tommy_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_banana_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_banana")
                        :add_fps_material("45_acp",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil)
                        :add_fps_material("mag",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_banana_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_banana_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_banana_gsm")
                        :add_tps_material("wpn_third_pis_m1911_m_banana",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_banana_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_banana_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_banana_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_extended_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_extended")
                        :add_fps_material("45_acp",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil)
                        :add_fps_material("wpn_fps_pis_m1911_m_extended",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_extended_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_extended_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_extended_gsm")
                        :add_tps_material("wpn_third_pis_m1911_m_extended",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_extended_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_extended_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_extended_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_standard_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_fps_material("bullets",
                            "units/vanilla/weapons/ammo/30_06/textures/30_06_nm",
                            "units/vanilla/weapons/ammo/30_06/textures/30_06_df",
                            "units/vanilla/weapons/ammo/30_06/textures/30_06_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_ns_cutts_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_ns_cutts")
                        :add_fps_material("wpn_fps_pis_m1911_ns_cutts",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_ns_cutts_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_ns_cutts_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_ns_cutts_gsm")
                        :add_tps_material("wpn_third_pis_m1911_ns_cutts",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_ns_cutts_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_ns_cutts_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_ns_cutts_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_s_wooden_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_s_wooden")
                        :add_fps_material("wpn_fps_pis_m1911_s_wooden",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_s_wooden_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_s_wooden_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_s_wooden_gsm")
                        :add_tps_material("wpn_third_pis_m1911_s_wooden",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_s_wooden_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_s_wooden_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_s_wooden_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_sl_standard_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_sl_standard")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gold_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_m1911_black", "m1911")
                :set_name_id("bangl_ws_m1911_black")
                :set_weapon_desc_id("bangl_ws_m1911_black_desc")
                :set_weapon_name_id("bangl_ws_m1911_black_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_UNCOMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_pis_m1911_body_standard_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_body_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_dh_hammer_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_dh_hammer")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_fg_tommy_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_fg_tommy")
                        :add_fps_material("wpn_fps_pis_m1911_fg_tommy",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_fg_tommy_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_fg_tommy_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_fg_tommy_gsm")
                        :add_tps_material("wpn_third_pis_m1911_fg_tommy",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_fg_tommy_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_fg_tommy_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_fg_tommy_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_banana_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_banana")
                        :add_fps_material("45_acp",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil)
                        :add_fps_material("mag",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_banana_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_banana_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_banana_gsm")
                        :add_tps_material("wpn_third_pis_m1911_m_banana",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_banana_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_banana_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_banana_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_extended_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_extended")
                        :add_fps_material("45_acp",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_nm",
                            "units/vanilla/weapons/wpn_fps_bullets/wpn_fps_bullets_df",
                            nil)
                        :add_fps_material("wpn_fps_pis_m1911_m_extended",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_extended_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_extended_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_m_extended_gsm")
                        :add_tps_material("wpn_third_pis_m1911_m_extended",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_extended_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_extended_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_m_extended_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_standard_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_fps_material("bullets",
                            "units/vanilla/weapons/ammo/30_06/textures/30_06_nm",
                            "units/vanilla/weapons/ammo/30_06/textures/30_06_df",
                            "units/vanilla/weapons/ammo/30_06/textures/30_06_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_ns_cutts_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_ns_cutts")
                        :add_fps_material("wpn_fps_pis_m1911_ns_cutts",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_ns_cutts_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_ns_cutts_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_ns_cutts_gsm")
                        :add_tps_material("wpn_third_pis_m1911_ns_cutts",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_ns_cutts_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_ns_cutts_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_ns_cutts_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_s_wooden_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_s_wooden")
                        :add_fps_material("wpn_fps_pis_m1911_s_wooden",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_s_wooden_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_s_wooden_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_s_wooden_gsm")
                        :add_tps_material("wpn_third_pis_m1911_s_wooden",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_s_wooden_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_s_wooden_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_s_wooden_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_sl_standard_black", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_sl_standard")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                        :add_tps_material("wpn_third_pis_m1911",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_black_df",
                            "units/vanilla/weapons/wpn_third_pis_m1911_pts/textures/wpn_third_pis_m1911_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_ithaca_nyan", "ithaca")
                :set_name_id("bangl_ws_ithaca_nyan")
                :set_weapon_desc_id("bangl_ws_ithaca_nyan_desc")
                :set_weapon_name_id("bangl_ws_ithaca_nyan_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_RARE)
                :add_parts({
                    SL_Part:new("wpn_fps_sho_ithaca_b_heat_shield_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_b_heat_shield")
                        :add_fps_material("wpn_fps_sho_ithaca_b_heat_shield",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_heat_shield_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_heat_shield_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_heat_shield_gsm")
                        :add_fps_material("wpn_fps_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_heat_shield",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_heat_shield_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_heat_shield_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_heat_shield_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_b_reinforced_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_b_reinforced")
                        :add_fps_material("wpn_fps_sho_ithaca_b_reinforced",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_reinforced_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_reinforced_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_reinforced_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_reinforced",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_reinforced_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_reinforced_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_reinforced_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_b_standard_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_b_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_b_long",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_long_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_long_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_long_gsm")
                        :add_tps_material("wpn_fps_sho_ithaca_b_long",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_long_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_long_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_long_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_body_standard_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_body_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_lifter_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_lifter")
                        :add_fps_material("wpn_fps_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_m_standard_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_m_standard")
                        :add_fps_material("brass",
                            nil,
                            "units/vanilla/weapons/ammo/shl_12ga_nyan_df",
                            "units/vanilla/weapons/ammo/shl_12ga_gsm")
                        :add_fps_material("plastic",
                            nil,
                            "units/vanilla/weapons/ammo/shl_12ga_nyan_df",
                            "units/vanilla/weapons/ammo/shl_12ga_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_ns_brake_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_ns_brake")
                        :add_fps_material("wpn_fps_sho_ithaca_ns_brake",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_ns_brake_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_ns_brake_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_ns_brake_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_ns_brake",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_ns_brake_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_ns_brake_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_ns_brake_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_s_cheek_rest_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_s_cheek_rest")
                        :add_fps_material("wpn_fps_sho_ithaca_s_cheek_rest",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_cheek_rest_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_cheek_rest_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_cheek_rest_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_s_cheek_rest",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_cheek_rest_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_cheek_rest_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_cheek_rest_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_s_pistol_grip_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_s_pistol_grip")
                        :add_fps_material("wpn_fps_sho_ithaca_s_pistol_grip",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_pistol_grip_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_pistol_grip_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_pistol_grip_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_s_pistol_grip",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_pistol_grip_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_pistol_grip_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_pistol_grip_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_s_standard_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_s_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_s_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_standard_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_s_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_standard_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_sl_standard_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_sl_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_trigger_nyan", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_trigger")
                        :add_fps_material("wpn_fps_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nyan_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nyan_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("bangl_ws_ithaca_rasta", "ithaca")
                :set_name_id("bangl_ws_ithaca_rasta")
                :set_weapon_desc_id("bangl_ws_ithaca_rasta_desc")
                :set_weapon_name_id("bangl_ws_ithaca_rasta_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_UNCOMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_sho_ithaca_b_heat_shield_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_b_heat_shield")
                        :add_fps_material("wpn_fps_sho_ithaca_b_heat_shield",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_heat_shield_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_heat_shield_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_heat_shield_gsm")
                        :add_fps_material("wpn_fps_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_heat_shield",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_heat_shield_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_heat_shield_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_heat_shield_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_b_reinforced_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_b_reinforced")
                        :add_fps_material("wpn_fps_sho_ithaca_b_reinforced",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_reinforced_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_reinforced_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_reinforced_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_reinforced",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_reinforced_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_reinforced_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_reinforced_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_b_standard_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_b_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_b_long",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_long_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_long_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_long_gsm")
                        :add_tps_material("wpn_fps_sho_ithaca_b_long",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_long_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_long_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_long_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_body_standard_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_body_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_lifter_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_lifter")
                        :add_fps_material("wpn_fps_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_m_standard_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_m_standard")
                        :add_fps_material("brass",
                            nil,
                            "units/vanilla/weapons/ammo/shl_12ga_rasta_df",
                            "units/vanilla/weapons/ammo/shl_12ga_gsm")
                        :add_fps_material("plastic",
                            nil,
                            "units/vanilla/weapons/ammo/shl_12ga_rasta_df",
                            "units/vanilla/weapons/ammo/shl_12ga_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_ns_brake_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_ns_brake")
                        :add_fps_material("wpn_fps_sho_ithaca_ns_brake",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_ns_brake_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_ns_brake_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_ns_brake_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_ns_brake",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_ns_brake_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_ns_brake_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_ns_brake_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_s_cheek_rest_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_s_cheek_rest")
                        :add_fps_material("wpn_fps_sho_ithaca_s_cheek_rest",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_cheek_rest_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_cheek_rest_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_cheek_rest_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_s_cheek_rest",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_cheek_rest_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_cheek_rest_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_cheek_rest_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_s_pistol_grip_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_s_pistol_grip")
                        :add_fps_material("wpn_fps_sho_ithaca_s_pistol_grip",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_pistol_grip_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_pistol_grip_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_pistol_grip_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_s_pistol_grip",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_pistol_grip_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_pistol_grip_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_pistol_grip_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_s_standard_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_s_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_s_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_standard_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_s_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_s_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_standard_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_s_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_sl_standard_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_sl_standard")
                        :add_fps_material("wpn_fps_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_b_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_b_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_b_standard_gsm"),
                    SL_Part:new("wpn_fps_sho_ithaca_trigger_rasta", "wpn_fps_sho_ithaca", "wpn_fps_sho_ithaca_trigger")
                        :add_fps_material("wpn_fps_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_rasta_df",
                            "units/upd_017/weapons/wpn_fps_sho_ithaca_pts/textures/wpn_fps_sho_ithaca_body_standard_gsm")
                        :add_tps_material("wpn_third_sho_ithaca_body_standard",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_nm",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_rasta_df",
                            "units/upd_017/weapons/wpn_third_sho_ithaca_pts/textures/wpn_third_sho_ithaca_body_standard_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("akashi_ws_m1911_blood", "m1911")
                :set_name_id("akashi_ws_m1911_blood")
                :set_weapon_desc_id("akashi_ws_m1911_blood_desc")
                :set_weapon_name_id("akashi_ws_m1911_blood_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_COMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_pis_m1911_body_standard_akashi_blood", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_body_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_blood_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_standard_akashi_blood", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_blood_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_b_standard_akashi_blood", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_b_standard")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_blood_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_sl_standard_akashi_blood", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_sl_standard")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_blood_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_dh_hammer_akashi_blood", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_dh_hammer")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_blood_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                })
        )
        self.RegisterSkin(
            SL_Skin:new("akashi_ws_m1911_gold", "m1911")
                :set_name_id("akashi_ws_m1911_gold")
                :set_weapon_desc_id("akashi_ws_m1911_gold_desc")
                :set_weapon_name_id("akashi_ws_m1911_gold_name")
                :set_gold_price(50)
                :set_droppable(true)
                :set_rarity(LootDropTweakData.RARITY_COMMON)
                :add_parts({
                    SL_Part:new("wpn_fps_pis_m1911_body_standard_akashi_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_body_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_m_standard_akashi_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_m_standard")
                        :add_fps_material("Default",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_b_standard_akashi_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_b_standard")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_sl_standard_akashi_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_sl_standard")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm"),
                    SL_Part:new("wpn_fps_pis_m1911_dh_hammer_akashi_gold", "wpn_fps_pis_m1911", "wpn_fps_pis_m1911_dh_hammer")
                        :add_fps_material("wpn_fps_pis_m1911",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_nm",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/akashi_m1911_gold_df",
                            "units/vanilla/weapons/wpn_fps_pis_m1911_pts/textures/wpn_fps_pis_m1911_gsm")
                })
        )
    end
)
