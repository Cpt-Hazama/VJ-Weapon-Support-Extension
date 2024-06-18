/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2024 by Cpt. Hazama, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local AddonName = "Weapon Support"
local PublicAddonName = AddonName .. " Extension"
local AddonType = "Extension"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')

    local file_Exists = file.Exists

    WSE = WSE or {}

    WSE.WEAPON_TYPE_CW2 = 1
    WSE.WEAPON_TYPE_FAS2 = 2
    WSE.WEAPON_TYPE_TFA = 4
    WSE.WEAPON_TYPE_MW2 = 8

    WSE.REGISTERED_CW2 = WSE.REGISTERED_CW2 or false
    WSE.REGISTERED_CW2E = WSE.REGISTERED_CW2E or false
    WSE.REGISTERED_CW2AOTW = WSE.REGISTERED_CW2AOTW or false
    WSE.REGISTERED_FAS2 = WSE.REGISTERED_FAS2 or false
    WSE.REGISTERED_TFA = WSE.REGISTERED_TFA or false
    WSE.REGISTERED_MW2 = WSE.REGISTERED_MW2 or false

    // lua_run_cl local category="CW 2.0 - ATOW" for _,w in pairs(weapons.GetList()) do if w.Spawnable and w.Category==category then print('VJ.AddNPCWeapon("VJ_'..w.PrintName:gsub("%s","")..'","'..w.ClassName..'",vCat)') end end

    local vCat = "VJ Base"

    if !WSE.REGISTERED_CW2 && file_Exists("autorun/cw_init.lua","LUA") then
        vCat = "VJ Base - CW 2.0"
        VJ.AddNPCWeapon("VJ_AK74","cw_ak74",vCat)
        VJ.AddNPCWeapon("VJ_AKM","cw_akm_official",vCat)
        VJ.AddNPCWeapon("VJ_AR15","cw_ar15",vCat)
        VJ.AddNPCWeapon("VJ_Deagle","cw_deagle",vCat)
        VJ.AddNPCWeapon("VJ_Famas","cw_famasg2_official",vCat)
        VJ.AddNPCWeapon("VJ_G3A3","cw_g3a3",vCat)
        VJ.AddNPCWeapon("VJ_L115","cw_l115",vCat)
        VJ.AddNPCWeapon("VJ_MP5","cw_mp5",vCat)
        VJ.AddNPCWeapon("VJ_MR96","cw_mr96",vCat)
        VJ.AddNPCWeapon("VJ_SVD","cw_svd_official",vCat)
        WSE.REGISTERED_CW2 = true
        print("[WSE] Added CW 2.0 weapons to NPC weapon list!")
    end
    if !WSE.REGISTERED_CW2E && file_Exists("autorun/ecw_init.lua","LUA") then
        vCat = "VJ Base - CW 2.0 Extra"
        VJ.AddNPCWeapon("VJ_FiveSeven","cw_fiveseven",vCat)
        VJ.AddNPCWeapon("VJ_G36C","cw_g36c",vCat)
        VJ.AddNPCWeapon("VJ_L85A2","cw_l85a2",vCat)
        VJ.AddNPCWeapon("VJ_M14","cw_m14",vCat)
        VJ.AddNPCWeapon("VJ_M1911","cw_m1911",vCat)
        VJ.AddNPCWeapon("VJ_M249","cw_m249_official",vCat)
        VJ.AddNPCWeapon("VJ_M3Super90","cw_m3super90",vCat)
        VJ.AddNPCWeapon("VJ_MAC11","cw_mac11",vCat)
        VJ.AddNPCWeapon("VJ_Makarov","cw_makarov",vCat)
        VJ.AddNPCWeapon("VJ_MP7","cw_mp7_official",vCat)
        VJ.AddNPCWeapon("VJ_MP9","cw_mp9_official",vCat)
        VJ.AddNPCWeapon("VJ_P99","cw_p99",vCat)
        VJ.AddNPCWeapon("VJ_Saiga12","cw_saiga12k_official",vCat)
        VJ.AddNPCWeapon("VJ_SCAR","cw_scarh",vCat)
        VJ.AddNPCWeapon("VJ_Shorty","cw_shorty",vCat)
        VJ.AddNPCWeapon("VJ_UMP45","cw_ump45",vCat)
        VJ.AddNPCWeapon("VJ_VSS","cw_vss",vCat)
        VJ.AddNPCWeapon("VJ_XM1014","cw_xm1014_official",vCat)
        WSE.REGISTERED_CW2E = true
        print("[WSE] Added CW 2.0 Extra weapons to NPC weapon list!")
    end
    if !WSE.REGISTERED_CW2AOTW && file_Exists("autorun/doi_atow_hl2ammo_init.lua","LUA") then
        vCat = "VJ Base - CW 2.0 Arms of The Old World"
        VJ.AddNPCWeapon("VJ_M1A1","doi_atow_m1a1",vCat)
        VJ.AddNPCWeapon("VJ_FG42","doi_atow_fg42",vCat)
        VJ.AddNPCWeapon("VJ_M1917","doi_atow_sw1917",vCat)
        VJ.AddNPCWeapon("VJ_K98k","doi_atow_k98k",vCat)
        VJ.AddNPCWeapon("VJ_M1Carbine","doi_atow_m1carbine",vCat)
        VJ.AddNPCWeapon("VJ_C96","doi_atow_c96",vCat)
        VJ.AddNPCWeapon("VJ_M3SMG","doi_atow_m3greasegun",vCat)
        VJ.AddNPCWeapon("VJ_MP40","doi_atow_mp40",vCat)
        VJ.AddNPCWeapon("VJ_MG42","doi_atow_mg42",vCat)
        VJ.AddNPCWeapon("VJ_M1918A2BAR","doi_atow_m1918a2",vCat)
        VJ.AddNPCWeapon("VJ_KP/-31","doi_ws_atow_kp31",vCat)
        VJ.AddNPCWeapon("VJ_Hi-Power","doi_atow_browninghp",vCat)
        VJ.AddNPCWeapon("VJ_Model29","doi_atow_sw29",vCat)
        VJ.AddNPCWeapon("VJ_MG34","doi_atow_mg34",vCat)
        VJ.AddNPCWeapon("VJ_BrenMk.II","doi_atow_bren",vCat)
        VJ.AddNPCWeapon("VJ_G43","doi_atow_g43",vCat)
        VJ.AddNPCWeapon("VJ_M1A1Carbine","doi_atow_m1a1carbine",vCat)
        VJ.AddNPCWeapon("VJ_WebleyMk.IV","doi_atow_webley",vCat)
        VJ.AddNPCWeapon("VJ_M1Garand","doi_atow_m1garand",vCat)
        VJ.AddNPCWeapon("VJ_WelrodMk.IIA","doi_atow_welrod",vCat)
        VJ.AddNPCWeapon("VJ_M1912","doi_atow_m1912",vCat)
        VJ.AddNPCWeapon("VJ_M37","doi_atow_ithaca37",vCat)
        VJ.AddNPCWeapon("VJ_StG44","doi_atow_stg44",vCat)
        VJ.AddNPCWeapon("VJ_Lee-EnfieldNo.4","doi_atow_enfield",vCat)
        VJ.AddNPCWeapon("VJ_StenSMG","doi_atow_sten",vCat)
        VJ.AddNPCWeapon("VJ_M1919A6","doi_atow_m1919a6",vCat)
        VJ.AddNPCWeapon("VJ_LewisLMG","doi_atow_lewis",vCat)
        VJ.AddNPCWeapon("VJ_M1928A1","doi_atow_m1928a1",vCat)
        VJ.AddNPCWeapon("VJ_M1903A3","doi_atow_m1903a3",vCat)
        VJ.AddNPCWeapon("VJ_C96M1932","doi_atow_c96carbine",vCat)
        VJ.AddNPCWeapon("VJ_M1911A1","doi_atow_m1911a1",vCat)
        VJ.AddNPCWeapon("VJ_VickersMG","doi_atow_vickers",vCat)
        VJ.AddNPCWeapon("VJ_OwenSMG","doi_atow_owen",vCat)
        VJ.AddNPCWeapon("VJ_MP34","doi_ws_atow_mp34",vCat)
        VJ.AddNPCWeapon("VJ_PPK","doi_atow_ppk",vCat)
        VJ.AddNPCWeapon("VJ_P08","doi_atow_p08",vCat)
        VJ.AddNPCWeapon("VJ_P38","doi_atow_p38",vCat)        
        WSE.REGISTERED_CW2AOTW = true
        print("[WSE] Added CW 2.0 AOTW weapons to NPC weapon list!")
    end

    if SERVER then
        util.AddNetworkString("VJ.WeaponSupportExtension.Data")

        hook.Add("OnEntityCreated","VJ.WeaponSupportExtension",function(ent)
            timer.Simple(0.1, function()
                if !IsValid(ent) then return end
                if ent:IsWeapon() && IsValid(ent:GetOwner()) && ent:GetOwner().IsVJBaseSNPC then
                    -- print(ent, "weapon data")
                    -- for k, v in SortedPairs(ent:GetTable()) do
                    --     print(k, v)
                    -- end
                    -- print("Checking weapon", ent)
                    local owner = ent:GetOwner()
                    if ent.CW20Weapon then
                        -- print("Weapon is CW 2.0, converting to VJ Base...")
                        local data = {}
                        data.VM = ent.ViewModel
                        data.WM = ent.WorldModel
                        data.HoldType = ent.NormalHoldType
                        data.ClipSize = ent.Primary.ClipSize
                        data.Damage = ent.Damage
                        data.Shots = ent.Shots
                        data.Delay = ent.FireDelay
                        data.Spread = ent.HipSpread
                        data.Ammo = ent.Primary.Ammo
                        data.Automatic = ent.Primary.Automatic
                        data.FireSound = ent.FireSound
                        data.MuzzleFX = ent.MuzzleEffect

                        local wep = owner:Give("weapon_vj_base")
                        wep.NPC_TimeUntilFire = 0
                        wep.NPC_NextPrimaryFire = (data.Delay or wep.NPC_NextPrimaryFire) *(data.Automatic && 0.95 or 2.25)
                        wep.ViewModel = data.VM or wep.ViewModel
                        wep.WorldModel = data.WM or wep.WorldModel
                        wep.HoldType = data.HoldType or wep.HoldType
                        wep.Primary.ClipSize = data.ClipSize or wep.Primary.ClipSize
                        wep.Primary.Damage = data.Damage or wep.Primary.Damage
                        wep.Primary.NumberOfShots = data.Shots or wep.Primary.NumberOfShots
                        wep.Primary.Delay = data.Delay or wep.Primary.Delay
                        wep.Primary.Cone = Vector(data.Spread,data.Spread,data.Spread) or wep.Primary.Cone
                        wep.Primary.Ammo = data.Ammo or wep.Primary.Ammo
                        print(wep.Primary.Ammo)
                        wep.Primary.Sound = data.FireSound or wep.Primary.Sound
                        if data.MuzzleFX then
                            wep.PrimaryEffects_MuzzleParticles = {data.MuzzleFX}
                        end
                        wep.MadeForNPCsOnly = true
                        net.Start("VJ.WeaponSupportExtension.Data")
                            net.WriteEntity(wep)
                            net.WriteEntity(ent)
                            net.WriteTable(data)
                            net.WriteInt(WSE.WEAPON_TYPE_CW2,6)
                        net.Broadcast()
                        SafeRemoveEntityDelayed(ent,0.0001)
                        wep:SetClip1(wep.Primary.ClipSize)
                        owner:SelectWeapon(wep:GetClass())

                        if IsValid(owner:GetCreator()) then
                            owner:GetCreator():ChatPrint("Temporarily converted weapon to VJ Base!")
                        end
                        -- print("Weapon converted to VJ Base!", wep)
                    end
                end
            end)
        end)
    else
        hook.Add("OnEntityCreated","VJ.WeaponSupportExtension.ErrorFix",function(ent)
            if ent:IsNPC() then
                if ent.Armor && isfunction(ent.Armor) then return end
                ent.Armor = function(v) return 0 end
                -- print("Setup armor for",ent)
            end
        end)

        net.Receive("VJ.WeaponSupportExtension.Data",function()
            local wep = net.ReadEntity()
            local ent = net.ReadEntity()
            local data = net.ReadTable()
            local type = net.ReadInt(6)
            if IsValid(wep) then
                if type == WSE.WEAPON_TYPE_CW2 then
                    wep.NPC_TimeUntilFire = 0
                    wep.NPC_NextPrimaryFire = data.Delay or wep.NPC_NextPrimaryFire
                    wep.ViewModel = data.VM or wep.ViewModel
                    wep.WorldModel = data.WM or wep.WorldModel
                    wep.HoldType = data.HoldType or wep.HoldType
                    wep.Primary.ClipSize = data.ClipSize or wep.Primary.ClipSize
                    wep.Primary.Damage = data.Damage or wep.Primary.Damage
                    wep.Primary.NumberOfShots = data.Shots or wep.Primary.NumberOfShots
                    wep.Primary.Delay = data.Delay or wep.Primary.Delay
                    wep.Primary.Cone = Vector(data.Spread,data.Spread,data.Spread) or wep.Primary.Cone
                    wep.Primary.Ammo = data.Ammo or wep.Primary.Ammo
                    wep.Primary.Sound = data.FireSound or wep.Primary.Sound
                    if data.MuzzleFX then
                        wep.PrimaryEffects_MuzzleParticles = {data.MuzzleFX}
                    end
                    wep.MadeForNPCsOnly = true
                    -- print(ent.WMPos,ent.WMAng)
                    if ent.WMPos != nil or ent.WMAng != nil then
                        wep.WorldModel_UseCustomPosition = true
                    end
                    local pos,ang = ent.WMPos or wep.WorldModel_CustomPositionOrigin,ent.WMAng or wep.WorldModel_CustomPositionAngle
                    wep.WorldModel_CustomPositionOrigin = pos
                    wep.WorldModel_CustomPositionAngle = ang
                end
            end
        end)
    end
	
-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile()
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if CLIENT then
		chat.AddText(Color(0, 200, 200), PublicAddonName, 
		Color(0, 255, 0), " was unable to install, you are missing ", 
		Color(255, 100, 0), "VJ Base!")
	end
	
	timer.Simple(1, function()
		if not VJBASE_ERROR_MISSING then
			VJBASE_ERROR_MISSING = true
			if CLIENT then
				// Get rid of old error messages from addons running on older code...
				if VJF && type(VJF) == "Panel" then
					VJF:Close()
				end
				VJF = true
				
				local frame = vgui.Create("DFrame")
				frame:SetSize(600, 160)
				frame:SetPos((ScrW() - frame:GetWide()) / 2, (ScrH() - frame:GetTall()) / 2)
				frame:SetTitle("Error: VJ Base is missing!")
				frame:SetBackgroundBlur(true)
				frame:MakePopup()
	
				local labelTitle = vgui.Create("DLabel", frame)
				labelTitle:SetPos(250, 30)
				labelTitle:SetText("VJ BASE IS MISSING!")
				labelTitle:SetTextColor(Color(255, 128, 128))
				labelTitle:SizeToContents()
				
				local label1 = vgui.Create("DLabel", frame)
				label1:SetPos(170, 50)
				label1:SetText("Garry's Mod was unable to find VJ Base in your files!")
				label1:SizeToContents()
				
				local label2 = vgui.Create("DLabel", frame)
				label2:SetPos(10, 70)
				label2:SetText("You have an addon installed that requires VJ Base but VJ Base is missing. To install VJ Base, click on the link below. Once\n                                                   installed, make sure it is enabled and then restart your game.")
				label2:SizeToContents()
				
				local link = vgui.Create("DLabelURL", frame)
				link:SetSize(300, 20)
				link:SetPos(195, 100)
				link:SetText("VJ_Base_Download_Link_(Steam_Workshop)")
				link:SetURL("https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				
				local buttonClose = vgui.Create("DButton", frame)
				buttonClose:SetText("CLOSE")
				buttonClose:SetPos(260, 120)
				buttonClose:SetSize(80, 35)
				buttonClose.DoClick = function()
					frame:Close()
				end
			elseif (SERVER) then
				VJF = true
				timer.Remove("VJBASEMissing")
				timer.Create("VJBASE_ERROR_CONFLICT", 5, 0, function()
					print("VJ Base is missing! Download it from the Steam Workshop! Link: https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				end)
			end
		end
	end)
end