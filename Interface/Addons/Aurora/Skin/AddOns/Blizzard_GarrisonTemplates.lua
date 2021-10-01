local _, private = ...
if not private.isRetail then return end

--[[ Lua Globals ]]
-- luacheck: globals select

--[[ Core ]]
local Aurora = private.Aurora
local Base = Aurora.Base
local Hook, Skin = Aurora.Hook, Aurora.Skin
local Color = Aurora.Color

do --[[ AddOns\Blizzard_GarrisonTemplates.lua ]]
    do --[[ Blizzard_GarrisonSharedTemplates ]]
        function Hook.GarrisonFollowerButton_SetCounterButton(button, followerID, index, info, lastUpdate, followerTypeID)
            local counter = button.Counters[index]
            if not counter._auroraSkinned then
                Skin.GarrisonMissionAbilityCounterTemplate(counter)
                counter._auroraSkinned = true
            end

            local scale = _G.GarrisonFollowerOptions[followerTypeID].followerListCounterScale
            if scale ~= 1 then
                counter:SetScale(1)
                local size = 20 * scale
                counter:SetSize(size, size)
            end
        end
        function Hook.GarrisonFollowerButton_AddAbility(self, index, ability, followerType)
            local Ability = self.Abilities[index]
            if not Ability._auroraSkinned then
                Skin.GarrisonFollowerListButtonAbilityTemplate(Ability)
                Ability._auroraSkinned = true
            end
        end
    end
    do --[[ Blizzard_GarrisonMissionTemplates ]]
        function Hook.GarrisonMission_RemoveFollowerFromMission(self, frame, updateValues)
            if frame.PortraitFrame then
                -- Ship followers have frame.Portrait instead
                Hook.GarrisonFollowerPortraitMixin.SetQuality(frame.PortraitFrame, 1)
            end
        end
        function Hook.GarrisonMissionFrame_SetItemRewardDetails(frame)
            local _, _, quality = _G.GetItemInfo(frame.itemID)
            Hook.SetItemButtonQuality(frame, quality, frame.itemID)
        end
    end
end

do --[[ AddOns\Blizzard_GarrisonTemplates.xml ]]
    do --[[ Blizzard_GarrisonSharedTemplates ]]
        function Skin.GarrisonUITemplate(Frame)
            if Frame.debug then
                _G.print("GarrisonUITemplate", Frame.debug)
            end
            Frame.BackgroundTile:SetAlpha(0)

            Frame.Top:Hide()
            Frame.Bottom:Hide()
            Frame.Left:Hide()
            Frame.Right:Hide()

            Frame.GarrCorners.TopLeftGarrCorner:Hide()
            Frame.GarrCorners.TopRightGarrCorner:Hide()
            Frame.GarrCorners.BottomLeftGarrCorner:Hide()
            Frame.GarrCorners.BottomRightGarrCorner:Hide()

            Skin.BaseBasicFrameTemplate(Frame)
        end

        function Skin.GarrisonMissionBaseFrameTemplate(Frame)
            Frame.BaseFrameBackground:Hide()
            Frame.BaseFrameTop:Hide()
            Frame.BaseFrameBottom:Hide()
            Frame.BaseFrameLeft:Hide()
            Frame.BaseFrameRight:Hide()
            Frame.BaseFrameTopLeft:Hide()
            Frame.BaseFrameTopRight:Hide()
            Frame.BaseFrameBottomLeft:Hide()
            Frame.BaseFrameBottomRight:Hide()

            for i = 10, 17 do
                select(i, Frame:GetRegions()):Hide()
            end

            Base.SetBackdrop(Frame, Color.frame)
        end
        function Skin.GarrisonListTemplate(Frame)
            Skin.GarrisonMissionBaseFrameTemplate(Frame)

            Frame.listScroll:SetPoint("TOPLEFT", 2, -2)
            Frame.listScroll:SetPoint("BOTTOMRIGHT", -20, 2)
            Skin.HybridScrollBarTrimTemplate(Frame.listScroll.scrollBar)
        end
        function Skin.GarrisonListTemplateHeader(Frame)
            Skin.GarrisonListTemplate(Frame)

            Frame.HeaderLeft:Hide()
            Frame.HeaderRight:Hide()
            Frame.HeaderMid:Hide()
        end

        function Skin.GarrisonFollowerButtonTemplate(Frame)
            Frame.BG:Hide()
            Base.SetBackdrop(Frame, Color.button, 0.5)

            Frame.Selection:SetTexCoord(0, 0.99568965517241, 0.01785714285714, 0.96428571428571)
            Frame.Selection:SetAllPoints()

            Frame.XPBar:SetPoint("TOPLEFT", Frame.PortraitFrame, "BOTTOMRIGHT", 0, 6)
            Skin.GarrisonFollowerPortraitTemplate(Frame.PortraitFrame)
            Frame.PortraitFrame:SetPoint("TOPLEFT", -3, 3)
            Frame.Highlight:SetTexCoord(0, 0.99568965517241, 0.01785714285714, 0.96428571428571)
            Frame.Highlight:SetAllPoints()
        end
        function Skin.GarrisonFollowerCombatAllySpellTemplate(Button)
            Base.CropIcon(Button.iconTexture, Button)
        end
        function Skin.GarrisonFollowerEquipmentTemplate(Button)
            Skin.GarrisonEquipmentTemplate(Button)
            Button.BG:Hide()
            Button.Border:Hide()

            local bg = _G.CreateFrame("Frame", nil, Button)
            bg:SetFrameLevel(Button:GetFrameLevel())
            bg:SetPoint("TOPLEFT", Button.Icon, -1, 1)
            bg:SetPoint("BOTTOMRIGHT", Button.Icon, 1, -1)
            Base.SetBackdrop(bg, Color.button, 0.3)
        end
        function Skin.GarrisonMissionFollowerDurabilityFrameTemplate(Frame)
        end
        function Skin.GarrisonAbilityCounterTemplate(Frame)
            Base.CropIcon(Frame.Icon, Frame)
            Frame.Icon:SetSize(20, 20)

            Frame.Border:ClearAllPoints()
            Frame.Border:SetPoint("TOPLEFT", Frame.Icon, -8, 8)
            Frame.Border:SetPoint("BOTTOMRIGHT", Frame.Icon, 8, -8)
        end
        function Skin.GarrisonMissionAbilityCounterTemplate(Frame)
            Skin.GarrisonAbilityCounterTemplate(Frame)
        end
        function Skin.GarrisonFollowerListButtonAbilityTemplate(Frame)
            Base.CropIcon(Frame.Icon, Frame)
        end
        function Skin.GarrisonMissionFollowerButtonTemplate(Frame)
            Skin.GarrisonFollowerButtonTemplate(Frame)
            Frame.AbilitiesBG:SetAlpha(0)
            Frame.BusyFrame:SetAllPoints()
        end
        function Skin.GarrisonMissionFollowerOrCategoryListButtonTemplate(Frame)
            Skin.GarrisonMissionFollowerButtonTemplate(Frame.Follower)
        end
        function Skin.MaterialFrameTemplate(Frame)
            local bg, label = Frame:GetRegions()
            bg:Hide()
            label:SetPoint("LEFT", 5, 0)
            Frame.Materials:SetPoint("RIGHT", Frame.Icon, "LEFT", -5, 0)

            Base.CropIcon(Frame.Icon, Frame)
            Frame.Icon:SetSize(18, 18)
            Frame.Icon:SetPoint("RIGHT", -5, 0)

            Base.SetBackdrop(Frame, Color.frame, 0.5)
            Frame:SetBackdropBorderColor(Color.yellow)
        end
        function Skin.GarrisonEquipmentTemplate(Button)
            Base.CropIcon(Button.Icon)
        end
    end
    do --[[ Blizzard_GarrisonMissionTemplates ]]
        function Skin.GarrisonMissionFrameTabTemplate(Button)
            Skin.FrameTypeButton(Button)
            Button:SetButtonColor(Color.frame, nil, false)
            Button:SetHeight(28)

            Button.LeftDisabled:SetTexture("")
            Button.MiddleDisabled:SetTexture("")
            Button.RightDisabled:SetTexture("")
            Button.Left:SetTexture("")
            Button.Middle:SetTexture("")
            Button.Right:SetTexture("")
            Button.LeftHighlight:SetTexture("")
            Button.RightHighlight:SetTexture("")
            Button.MiddleHighlight:SetTexture("")

            Button.Text:SetPoint("CENTER", Button, "CENTER")

            Button._auroraTabResize = true
        end
        function Skin.GarrisonMissionRewardEffectsTemplate(Frame)
            Base.CropIcon(Frame.Icon)

            Frame.IconBorder:Hide()
            local iconBG = _G.CreateFrame("Frame", nil, Frame)
            iconBG:SetPoint("TOPLEFT", Frame.Icon, -1, 1)
            iconBG:SetPoint("BOTTOMRIGHT", Frame.Icon, 1, -1)
            Base.SetBackdrop(iconBG, Color.black, 0)
            Frame._auroraIconBorder = iconBG

            Frame.BG:SetAlpha(0)
            local nameBG = _G.CreateFrame("Frame", nil, Frame)
            nameBG:SetPoint("TOPLEFT", iconBG, "TOPRIGHT", 1, 0)
            nameBG:SetPoint("BOTTOMRIGHT", -3, -1)
            Base.SetBackdrop(nameBG, Color.frame)
            Frame._auroraNameBG = nameBG
        end
        function Skin.GarrisonMissionPageOvermaxRewardTemplate(Frame)
            Base.CropIcon(Frame.Icon)

            Frame.IconBorder:Hide()
            local iconBG = _G.CreateFrame("Frame", nil, Frame)
            iconBG:SetPoint("TOPLEFT", Frame.Icon, -1, 1)
            iconBG:SetPoint("BOTTOMRIGHT", Frame.Icon, 1, -1)
            Base.SetBackdrop(iconBG, Color.black, 0)
            Frame._auroraIconBorder = iconBG
        end
        function Skin.GarrisonMissionPageRewardTemplate(Frame)
            Skin.GarrisonMissionPageOvermaxRewardTemplate(Frame.OvermaxItem)
            Skin.GarrisonMissionRewardEffectsTemplate(Frame.Reward1)
            Skin.GarrisonMissionRewardEffectsTemplate(Frame.Reward2)
        end
        function Skin.GarrisonAbilityLargeCounterTemplate(Frame)
            Base.CropIcon(Frame.Icon, Frame)
        end
        Skin.GarrisonMissionLargeMechanicTemplate = Skin.GarrisonAbilityLargeCounterTemplate
        Skin.GarrisonMissionCheckTemplate = private.nop
        Skin.GarrisonMissionMechanicTemplate = Skin.GarrisonAbilityCounterTemplate
        function Skin.GarrisonMissionEnemyMechanicTemplate(Frame)
            Skin.GarrisonMissionMechanicTemplate(Frame)
            Skin.GarrisonMissionCheckTemplate(Frame)
        end
        function Skin.GarrisonMissionEnemyLargeMechanicTemplate(Frame)
            Skin.GarrisonMissionLargeMechanicTemplate(Frame)
            Skin.GarrisonMissionCheckTemplate(Frame)
        end
        function Skin.GarrisonMissionStageTemplate(Frame)
            Frame.LocBack:SetPoint("TOPLEFT")
            Frame.LocBack:SetPoint("BOTTOMRIGHT")
            Frame.LocBack:SetVertexColor(Color.gray:GetRGB())
            select(4, Frame:GetRegions()):Hide()

            local mask1 = Frame:CreateMaskTexture(nil, "ARTWORK")
            mask1:SetTexture([[Interface\Common\icon-shadow]], "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
            mask1:SetPoint("TOPLEFT", Frame.LocBack, -150, 100)
            mask1:SetPoint("BOTTOMRIGHT", Frame.LocBack, 150, -20)
            Frame.LocBack:AddMaskTexture(mask1)
            Frame.LocMid:AddMaskTexture(mask1)
            Frame.LocFore:AddMaskTexture(mask1)
        end
        function Skin.StartMissionButtonTemplate(Button)
            Skin.UIPanelButtonTemplate(Button)
            Button.Flash:SetAtlas("GarrMission_FollowerListButton-Select")
            Button.Flash:SetAllPoints()
            Button.Flash:SetTexCoord(0, 0.99568965517241, 0.01785714285714, 0.96428571428571)
        end
        function Skin.GarrisonMissionPageCostFrameTemplate(Button)
            Base.CropIcon(Button.CostIcon, Button)
        end
        Skin.GarrisonMissionPageCostWithTooltipTemplate = Skin.GarrisonMissionPageCostFrameTemplate
        Skin.GarrisonMissionPageStageTemplate = Skin.GarrisonMissionStageTemplate
        function Skin.GarrisonMissionPageCloseButtonTemplate(Button)
            Skin.UIPanelCloseButton(Button)
            Button:SetSize(32, 32)
        end
        function Skin.GarrisonMissionPageItemLevelHitboxFrame(Frame)
        end
        function Skin.MissionPageTemplate(Button)
            Skin.GarrisonMissionPageCloseButtonTemplate(Button.CloseButton)
            Skin.GarrisonMissionPageStageTemplate(Button.Stage)
            Skin.GarrisonMissionPageItemLevelHitboxFrame(Button.ItemLevelHitboxFrame)
        end
        Skin.GarrisonMissionFrameTemplate = private.nop
        function Skin.GarrisonMissionCompleteDialogTemplate(Frame)
            Skin.GarrisonMissionStageTemplate(Frame.Stage)
            local left, right = select(5, Frame.Stage:GetRegions())
            left:Hide()
            right:Hide()

            Skin.UIPanelButtonTemplate(Frame.ViewButton)
        end
        function Skin.GarrisonMissionBonusRewardsTemplate(Frame)
            local bg, tl, tr, bl, br, l, r, t, b = Frame.Saturated:GetRegions()
            Base.CreateBackdrop(Frame, private.backdrop, {
                bg = bg,

                l = l,
                r = r,
                t = t,
                b = b,

                tl = tl,
                tr = tr,
                bl = bl,
                br = br,

                borderLayer = "BACKGROUND",
                borderSublevel = -7,
            })
            Base.SetBackdrop(Frame, Color.frame)
        end
        Skin.GarrisonMissionCompleteStageTemplate = private.nop
        function Skin.GarrisonMissionCompleteTemplate(Frame)
            Frame.ButtonFrameLeft:Hide()
            Frame.ButtonFrameRight:Hide()
            Skin.UIPanelButtonTemplate(Frame.NextMissionButton)
        end
        function Skin.GarrisonFollowerXPBarTemplate(StatusBar)
            Skin.FrameTypeStatusBar(StatusBar)

            StatusBar:GetRegions():Hide()
            StatusBar.XPLeft:ClearAllPoints()
            StatusBar.XPRight:ClearAllPoints()
        end
        Skin.GarrisonFollowerXPGainTemplate = private.nop
        Skin.GarrisonFollowerLevelUpTemplate = private.nop
    end
    do --[[ Blizzard_CovenantMissionTemplates ]]
        function Skin.CovenantMissionBaseFrameTemplate(Frame)
            Base.CreateBackdrop(Frame, private.backdrop, {
                bg = Frame.BaseFrameBackground,

                l = Frame.RaisedFrameEdges.BaseFrameLeftEdge,
                r = Frame.RaisedFrameEdges.BaseFrameRightEdge,
                t = Frame.RaisedFrameEdges.BaseFrameTopEdge,
                b = Frame.RaisedFrameEdges.BaseFrameBottomEdge,

                tl = Frame.RaisedFrameEdges.BaseFrameTopLeftCorner,
                tr = Frame.RaisedFrameEdges.BaseFrameTopRightCorner,
                bl = Frame.RaisedFrameEdges.BaseFrameBottomLeftCorner,
                br = Frame.RaisedFrameEdges.BaseFrameBottomRightCorner,
            })

            Frame.BaseFrameTop:Hide()
            Frame.BaseFrameBottom:Hide()
            Frame.BaseFrameLeft:Hide()
            Frame.BaseFrameRight:Hide()
            Frame.BoardDropShadow:Hide()

            Frame.BaseFrameTopLeft:Hide()
            Frame.BaseFrameTopRight:Hide()
            Frame.BaseFrameBottomLeft:Hide()
            Frame.BaseFrameBottomRight:Hide()

            Base.SetBackdrop(Frame, Color.frame)
        end
        function Skin.CovenantFollowerTabTemplate(Frame)
            Skin.CovenantMissionBaseFrameTemplate(Frame)
            Skin.UIPanelButtonTemplate(Frame.HealFollowerFrame.HealFollowerButton)
            Skin.GarrisonMissionPageCostFrameTemplate(Frame.HealFollowerFrame.CostFrame)
        end
        function Skin.OribosScrollUpButtonTemplate(Button)
            Skin.UIPanelScrollBarButton(Button)
            Button:SetSize(18, 16)

            local arrow = Button._auroraTextures[1]
            Base.SetTexture(arrow, "arrowUp")
        end
        function Skin.OribosScrollDownButtonTemplate(Button)
            Skin.UIPanelScrollBarButton(Button)
            Button:SetSize(18, 16)

            local arrow = Button._auroraTextures[1]
            Base.SetTexture(arrow, "arrowDown")
        end
        function Skin.OribosScrollBarTemplate(Slider)
            local trackBG, trackBackplate = Slider:GetRegions()
            trackBG:Hide()
            trackBackplate:Hide()

            Skin.OribosScrollUpButtonTemplate(Slider.UpButton)
            Skin.OribosScrollDownButtonTemplate(Slider.DownButton)
            Skin.HybridScrollBarButton(Slider.thumbTexture)
        end
        function Skin.CovenantListWideFrameTemplate(Frame)
            Skin.CovenantMissionBaseFrameTemplate(Frame)
            Skin.OribosScrollBarTemplate(Frame.listScroll.scrollBar)
        end
        function Skin.CovenantFollowerListTemplate(Frame)
            Skin.OribosScrollBarTemplate(Frame.listScroll.scrollBar)
            Frame.ElevatedFrame:Hide()
        end
        function Skin.CovenantMissionListTemplate(Frame)
            Skin.CovenantListWideFrameTemplate(Frame)
            Skin.MaterialFrameTemplate(Frame.MaterialFrame)
            Frame.MaterialFrame:SetPoint("BOTTOMRIGHT", Frame, "TOPRIGHT", -9, 9)
            Frame.MaterialFrame:SetPoint("TOPLEFT", Frame, "TOPRIGHT", -307, 34)
            Frame.MaterialFrame.LeftFiligree:Hide()
            Frame.MaterialFrame.RightFiligree:Hide()
        end
        function Skin.CovenantMissionListButtonTemplate(Button)
            Button.ButtonBG:Hide()
            Button.Highlight:Hide()
            --[[
            Button.LocBG:SetTexture("")
            ]]
            Base.SetBackdrop(Button, Color.button)
            Button:SetBackdropOption("offsets", {
                left = 1,
                right = 9,
                top = 5,
                bottom = 5,
            })
            Base.SetHighlight(Button)
        end
    end
end

function private.AddOns.Blizzard_GarrisonTemplates()
    ----====####$$$$%%%%%%$$$$####====----
    -- Blizzard_GarrisonSharedTemplates --
    ----====####$$$$%%%%%%$$$$####====----
    _G.hooksecurefunc("GarrisonFollowerButton_SetCounterButton", Hook.GarrisonFollowerButton_SetCounterButton)
    _G.hooksecurefunc("GarrisonFollowerButton_AddAbility", Hook.GarrisonFollowerButton_AddAbility)

    -------------
    -- Section --
    -------------

    ----====####$$$$%%%%%%%$$$$####====----
    -- Blizzard_GarrisonMissionTemplates --
    ----====####$$$$%%%%%%%$$$$####====----
    _G.hooksecurefunc(_G.GarrisonMission, "RemoveFollowerFromMission", Hook.GarrisonMission_RemoveFollowerFromMission)
    _G.hooksecurefunc("GarrisonMissionFrame_SetItemRewardDetails", Hook.GarrisonMissionFrame_SetItemRewardDetails)

    if not private.disabled.tooltips then
        Skin.GameTooltipTemplate(_G.GarrisonMissionMechanicTooltip)
        Skin.PositionGarrisonAbiltyBorder(_G.GarrisonMissionMechanicTooltip.Border, _G.GarrisonMissionMechanicTooltip.Icon)
        Skin.GameTooltipTemplate(_G.GarrisonMissionMechanicFollowerCounterTooltip)
        Skin.PositionGarrisonAbiltyBorder(_G.GarrisonMissionMechanicFollowerCounterTooltip.Border, _G.GarrisonMissionMechanicFollowerCounterTooltip.Icon)
    end

    -------------
    -- Section --
    -------------
end
