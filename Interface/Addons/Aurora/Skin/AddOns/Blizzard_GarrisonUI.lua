local _, private = ...
if not private.isRetail then return end

--[[ Lua Globals ]]
-- luacheck: globals select

--[[ Core ]]
local Aurora = private.Aurora
local Base = Aurora.Base
local Hook, Skin = Aurora.Hook, Aurora.Skin
local Color, Util = Aurora.Color, Aurora.Util

do --[[ AddOns\Blizzard_GarrisonUI.lua ]]
    do --[[ Blizzard_OrderHallMissionUI ]]
        Hook.OrderHallMission = {}
        function Hook.GarrisonMissionButton_SetReward(frame, reward, currencyMultipliers)
            if not frame._auroraSkinned then
                Skin.GarrisonMissionListButtonRewardTemplate(frame)
                frame._auroraSkinned = true
            end
        end
    end
    do --[[ Blizzard_OrderHallMissionUI ]]
        Hook.OrderHallMission = {}
        function Hook.OrderHallMission:SetupTabs()
            Util.PositionRelative("TOPLEFT", self, "BOTTOMLEFT", 20, -1, 1, "Right", {
                self.Tab1,
                self.Tab2,
                self.Tab3,
            })
        end
    end
    do --[[ Blizzard_CovenantMissionUI ]]
        Hook.BFAMission = {}
        Hook.BFAMission.SetupTabs = Hook.OrderHallMission.SetupTabs
    end
    do --[[ Blizzard_CovenantMissionUI ]]
        Hook.CovenantMission = {}
        Hook.CovenantMission.SetupTabs = Hook.OrderHallMission.SetupTabs
        function Hook.CovenantMission:SelectTab(id)
            self.MapTab:SetShown(id == 3)
        end
    end
end

do --[[ AddOns\Blizzard_GarrisonUI.xml ]]
    do --[[ Blizzard_GarrisonMissionUI.xml ]]
        function Skin.GarrisonFollowerMissionPortraitTemplate(Frame)
            Skin.GarrisonFollowerPortraitTemplate(Frame)
            Hook.GarrisonFollowerPortraitMixin.SetQuality(Frame, 1)
            Frame.Level:Hide()

            Frame.Empty:SetAtlas("Garr_FollowerPortrait_Bg")
            Frame.Empty:SetDrawLayer("BACKGROUND", 1)
            Frame.Empty:SetAllPoints(Frame.Portrait)
            Frame.Empty:SetTexCoord(0.08620689655172, 0.86206896551724, 0.06896551724138, 0.8448275862069)

            Frame.Highlight:SetTexture([[Interface\Buttons\CheckButtonHilight]])
            Frame.Highlight:SetTexCoord(0.0625, 0.9375, 0.0625, 0.9375)
            Frame.Highlight:ClearAllPoints()
            Frame.Highlight:SetPoint("TOPLEFT", Frame._auroraPortraitBG, 5, -5)
            Frame.Highlight:SetPoint("BOTTOMRIGHT", Frame._auroraLvlBG, "TOPRIGHT", -1, 0)
        end
        function Skin.GarrisonMissionListTabTemplate(Button)
            Button.Left:SetAlpha(0)
            Button.Right:SetAlpha(0)
            Button.Middle:SetAlpha(0)
            Button.SelectedLeft:SetAlpha(0)
            Button.SelectedRight:SetAlpha(0)
            Button.SelectedMid:SetAlpha(0)
        end
        function Skin.GarrisonMissionAbilityLargeCounterTemplate(Frame)
            Skin.GarrisonAbilityLargeCounterTemplate(Frame)
        end
        function Skin.GarrisonFollowerPageAbilityIconButtonTemplate(Button)
            Base.CropIcon(Button.Icon)
        end
        function Skin.GarrisonFollowerPageAbilityTemplate(Button)
            Skin.GarrisonFollowerPageAbilityIconButtonTemplate(Button.IconButton, Button)
        end
        function Skin.GarrisonMissionListButtonRewardTemplate(Frame)
            Base.CropIcon(Frame.Icon)

            local bg = _G.CreateFrame("Frame", nil, Frame)
            bg:SetPoint("TOPLEFT", Frame.Icon, -1, 1)
            bg:SetPoint("BOTTOMRIGHT", Frame.Icon, 1, -1)
            Base.SetBackdrop(bg, Color.black, 0)
            Frame._auroraIconBorder = bg

            Frame.IconBorder:Hide()
        end
        function Skin.GarrisonMissionListButtonNewHighlightTemplate(Frame)
        end
        function Skin.GarrisonMissionListButtonTemplate(Button)
            local bg, l, r, t, b, _, t2, b2, tl, tr, bl, br = Button:GetRegions()
            Base.CreateBackdrop(Button, private.backdrop, {
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
            Base.SetBackdrop(Button, Color.button)
            t2:Hide()
            b2:Hide()

            Button.RareOverlay:SetTexture("")
            Button.HighlightT:SetTexture("")
            Button.HighlightB:SetTexture("")
            Button.HighlightTL:SetTexture("")
            Button.HighlightTR:SetTexture("")
            Button.HighlightBL:SetTexture("")
            Button.HighlightBR:SetTexture("")
            Button.Highlight:SetTexture("")
            Button:DisableDrawLayer("HIGHLIGHT")
            Base.SetHighlight(Button)
        end
        function Skin.GarrisonFollowerMissionRewardsFrameTemplate(Frame)
            local bg, l, r, t, b, tl, tr, bl, br = Frame:GetRegions()
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
        function Skin.GarrisonMissionPageFollowerTemplate(Frame)
            Frame:GetRegions():Hide()

            Base.SetBackdrop(Frame, Color.button, Color.frame.a)
            Frame:SetBackdropOption("offsets", {
                left = 3,
                right = 0,
                top = 2,
                bottom = 1,
            })

            Skin.GarrisonFollowerMissionPortraitTemplate(Frame.PortraitFrame)
            Skin.GarrisonMissionAbilityLargeCounterTemplate(Frame.Counters[1])
            Skin.GarrisonMissionFollowerDurabilityFrameTemplate(Frame.Durability[1])
        end
        function Skin.GarrisonEnemyPortraitTemplate(Frame)
        end
        function Skin.GarrisonMissionPageEnemyTemplate(Frame)
            Skin.GarrisonEnemyPortraitTemplate(Frame.PortraitFrame)
            Skin.GarrisonMissionEnemyLargeMechanicTemplate(Frame.Mechanics[1])
        end
        function Skin.GarrisonLargeFollowerXPFrameTemplate(Frame)
            Frame:GetRegions():Hide()

            Base.SetBackdrop(Frame, Color.button, Color.frame.a)
            Frame:SetBackdropOption("offsets", {
                left = 3,
                right = 0,
                top = 2,
                bottom = 1,
            })

            Skin.GarrisonFollowerPortraitTemplate(Frame.PortraitFrame)
            Skin.GarrisonFollowerXPBarTemplate(Frame.XP)
            Skin.GarrisonFollowerXPGainTemplate(Frame.XPGain)
            Skin.GarrisonFollowerLevelUpTemplate(Frame.LevelUpFrame)
            Skin.GarrisonMissionFollowerDurabilityFrameTemplate(Frame.DurabilityFrame)
        end
        function Skin.GarrisonMissionPageBaseTemplate(Frame)
            local bg, l, r, t, b, tl, tr, bl, br, tex1 = Frame:GetRegions()
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
            tex1:Hide()
            Base.SetBackdrop(Frame, Color.frame, 0.5)
        end
        function Skin.GarrisonMissionTopBorderTemplate(Frame)
            local tex1, tex2, tex3 = select(11, Frame:GetRegions())
            tex1:Hide()
            tex2:Hide()
            tex3:Hide()
        end
        function Skin.GarrisonMissionListTemplate(Frame)
            Skin.GarrisonListTemplate(Frame)
            Skin.GarrisonMissionListTabTemplate(Frame.Tab1)
            Skin.GarrisonMissionListTabTemplate(Frame.Tab2)
            Skin.MaterialFrameTemplate(Frame.MaterialFrame)
            Frame.MaterialFrame:SetPoint("BOTTOMRIGHT", Frame, "TOPRIGHT", -9, 9)
            Frame.MaterialFrame:SetPoint("TOPLEFT", Frame, "TOPRIGHT", -307, 34)

            Frame.CompleteDialog:SetPoint("TOPLEFT", Frame:GetParent())
            Frame.CompleteDialog:SetPoint("BOTTOMRIGHT", Frame:GetParent())
            Skin.GarrisonMissionPageBaseTemplate(Frame.CompleteDialog.BorderFrame)
            Skin.GarrisonMissionCompleteDialogTemplate(Frame.CompleteDialog.BorderFrame)
            Skin.GarrisonMissionTopBorderTemplate(Frame.CompleteDialog.BorderFrame)
        end
        function Skin.GarrisonFollowerTabTemplate(Frame)
            Skin.GarrisonMissionBaseFrameTemplate(Frame)

            Frame.HeaderBG:Hide()

            Skin.GarrisonFollowerPortraitTemplate(Frame.PortraitFrame)
            Skin.GarrisonFollowerXPBarTemplate(Frame.XPBar)

            Skin.GarrisonFollowerCombatAllySpellTemplate(Frame.AbilitiesFrame.CombatAllySpell[1])
            Skin.GarrisonFollowerCombatAllySpellTemplate(Frame.AbilitiesFrame.CombatAllySpell[2])
        end
        function Skin.FollowerMissionPageTemplate(Frame)
            Skin.GarrisonMissionPageBaseTemplate(Frame)
            Skin.MissionPageTemplate(Frame)

            Frame.ButtonFrame:Hide()
            local coverLeft, coverRight, coverBott, _, _, coverTop, cornerLeft, cornerRight = select(13, Frame:GetRegions())
            coverLeft:Hide()
            coverRight:Hide()
            coverBott:Hide()

            coverTop:Hide()
            cornerLeft:Hide()
            cornerRight:Hide()

            Skin.GarrisonFollowerMissionRewardsFrameTemplate(Frame.RewardsFrame)
            Skin.GarrisonMissionPageRewardTemplate(Frame.RewardsFrame)

            Skin.StartMissionButtonTemplate(Frame.StartMissionButton)
            Skin.GarrisonMissionPageCostWithTooltipTemplate(Frame.CostFrame)
        end
        function Skin.GarrisonFollowerMissionCompleteStageTemplate(Frame)
            Skin.GarrisonMissionStageTemplate(Frame)
            Skin.GarrisonMissionCompleteStageTemplate(Frame)

            Skin.GarrisonLargeFollowerXPFrameTemplate(Frame.FollowersFrame.Follower1)
            Skin.GarrisonLargeFollowerXPFrameTemplate(Frame.FollowersFrame.Follower2)
            Skin.GarrisonLargeFollowerXPFrameTemplate(Frame.FollowersFrame.Follower3)

            local left, right, bottom = Frame.MissionInfo:GetRegions()
            left:Hide()
            right:Hide()
            bottom:Hide()

            local top, tl, tr = select(11, Frame.MissionInfo:GetRegions())
            top:Hide()
            tl:Hide()
            tr:Hide()
        end
    end
    do --[[ Blizzard_GarrisonShipyardUI.xml ]]
        function Skin.GarrisonBonusEffectFrameTemplate(Frame)
            Base.CropIcon(Frame.Icon, Frame)
        end
        function Skin.GarrisonBonusAreaTooltipFrameTemplate(Frame)
            Skin.GarrisonBonusEffectFrameTemplate(Frame.BonusEffectFrame)
        end
    end
    do --[[ Blizzard_GarrisonLandingPage.xml ]]
        function Skin.GarrisonLandingPageReportMissionRewardTemplate(Frame)
            Base.CropIcon(Frame.Icon)

            local bg = _G.CreateFrame("Frame", nil, Frame)
            bg:SetPoint("TOPLEFT", Frame.Icon, -1, 1)
            bg:SetPoint("BOTTOMRIGHT", Frame.Icon, 1, -1)
            Base.SetBackdrop(bg, Color.black, 0)
            Frame._auroraIconBorder = bg

            Frame.IconBorder:Hide()
        end
        function Skin.GarrisonLandingPageReportMissionTemplate(Button)
            Button.BG:Hide()
            Base.SetBackdrop(Button, Color.button)

            Skin.GarrisonLandingPageReportMissionRewardTemplate(Button.Reward1)
            Skin.GarrisonLandingPageReportMissionRewardTemplate(Button.Reward2)
            Skin.GarrisonLandingPageReportMissionRewardTemplate(Button.Reward3)
        end
        function Skin.GarrisonLandingPageTabTemplate(Button)
            Button:SetHeight(28)

            Button.LeftDisabled:SetAlpha(0)
            Button.MiddleDisabled:SetAlpha(0)
            Button.RightDisabled:SetAlpha(0)
            Button.Left:SetAlpha(0)
            Button.Middle:SetAlpha(0)
            Button.Right:SetAlpha(0)
            Button.LeftHighlight:SetAlpha(0)
            Button.RightHighlight:SetAlpha(0)
            Button.MiddleHighlight:SetAlpha(0)

            Skin.FrameTypeFrame(Button)

            Button.Text:ClearAllPoints()
            Button.Text:SetPoint("CENTER")

            Button._auroraTabResize = true
        end
        function Skin.BaseLandingPageFollowerListTemplate(Frame)
            Frame.FollowerHeaderBar:Hide()
            Frame.FollowerScrollFrame:Hide()
            Skin.SearchBoxTemplate(Frame.SearchBox)
            Skin.MinimalHybridScrollBarTemplate(Frame.listScroll.scrollBar)
        end
    end
    do --[[ Blizzard_GarrisonCapacitiveDisplay.xml ]]
        function Skin.GarrisonCapacitiveItemButtonTemplate(Frame)
            Base.CropIcon(Frame.Icon)

            local iconBG = _G.CreateFrame("Frame", nil, Frame)
            iconBG:SetFrameLevel(Frame:GetFrameLevel() - 1)
            iconBG:SetPoint("TOPLEFT", Frame.Icon, -1, 1)
            iconBG:SetPoint("BOTTOMRIGHT", Frame.Icon, 1, -1)
            Base.SetBackdrop(iconBG, Color.frame)
            Frame._auroraIconBorder = iconBG

            Frame.NameFrame:SetAlpha(0)

            local nameBG = _G.CreateFrame("Frame", nil, Frame)
            nameBG:SetPoint("TOPLEFT", iconBG, "TOPRIGHT", 1, 0)
            nameBG:SetPoint("BOTTOMRIGHT", -3, 1)
            Base.SetBackdrop(nameBG, Color.frame)
            Frame._auroraNameBG = nameBG
        end
        function Skin.GarrisonCapacitiveWorkOrderTemplate(Frame)
            Skin.GarrisonBonusEffectFrameTemplate(Frame.BonusEffectFrame)
        end

        -- Not templates
        function Skin.GarrisonCapacitiveInputSpinner(Frame)
            Frame.DecrementButton = _G.GarrisonCapacitiveDisplayFrame.DecrementButton
            Frame.DecrementButton:ClearAllPoints()

            local name = Util.GetName(Frame)
            Frame.Left = _G[name.."Left"]
            Frame.Right = _G[name.."Right"]
            Frame.Middle = _G[name.."Middle"]

            Frame.IncrementButton = _G.GarrisonCapacitiveDisplayFrame.IncrementButton
            Frame.IncrementButton:ClearAllPoints()

            Skin.NumericInputSpinnerTemplate(Frame)
        end
    end
    do --[[ Blizzard_OrderHallMissionUI.xml ]]
        function Skin.OrderHallMissionListButtonTemplate(Button)
            Skin.GarrisonMissionListButtonTemplate(Button)
        end
        function Skin.OrderHallMissionPageEnemyTemplate(Button)
            Skin.GarrisonMissionPageEnemyTemplate(Button)
        end
        function Skin.OrderHallMissionPageTemplate(Frame)
            Skin.GarrisonMissionPageBaseTemplate(Frame)
            Skin.GarrisonMissionPageCloseButtonTemplate(Frame.CloseButton)
            Skin.GarrisonMissionPageStageTemplate(Frame.Stage)
            Skin.GarrisonMissionPageCostWithTooltipTemplate(Frame.CostFrame)

            Frame.ButtonFrame:SetAtlas("GarrMission_PartyBuffsBG", true)
            Frame.ButtonFrame:SetWidth(400)
            Frame.ButtonFrame:SetPoint("BOTTOM", 0, -20)

            local left, right, bottom = select(13, Frame:GetRegions())
            left:Hide()
            right:Hide()
            bottom:Hide()

            local top, tl, tr = select(18, Frame:GetRegions())
            top:Hide()
            tl:Hide()
            tr:Hide()

            Skin.GarrisonFollowerMissionRewardsFrameTemplate(Frame.RewardsFrame)
            Skin.GarrisonMissionPageRewardTemplate(Frame.RewardsFrame)

            Skin.OrderHallMissionPageEnemyTemplate(Frame.Enemy1)
            Skin.OrderHallMissionPageEnemyTemplate(Frame.Enemy2)
            Skin.OrderHallMissionPageEnemyTemplate(Frame.Enemy3)

            Skin.GarrisonMissionPageFollowerTemplate(Frame.Follower1)
            Skin.GarrisonMissionPageFollowerTemplate(Frame.Follower2)
            Skin.GarrisonMissionPageFollowerTemplate(Frame.Follower3)
        end
        function Skin.OrderHallFrameTabButtonTemplate(Button)
            Skin.CharacterFrameTabButtonTemplate(Button)
            Button._auroraTabResize = true
        end
    end
    do --[[ Blizzard_AdventuresCombatLog ]]
        function Skin.CombatLogTemplate(Frame)
            Frame:GetRegions():Hide() -- bg
            Skin.OribosScrollUpButtonTemplate(Frame.CombatLogMessageFrame.ScrollBar.ScrollUp)
            Skin.OribosScrollDownButtonTemplate(Frame.CombatLogMessageFrame.ScrollBar.ScrollDown)
            --Skin.HybridScrollBarButton(Frame.CombatLogMessageFrame.thumbTexture)
            Frame.ElevatedFrame:Hide()
        end
    end
    do --[[ Blizzard_AdventuresCompleteScreen ]]
        function Skin.AdventuresCompleteScreenTemplate(Frame)
            Skin.NineSlicePanelTemplate(Frame.NineSlice)
            Skin.AdventuresRewardsScreenTemplate(Frame.RewardsScreen)
            Skin.CombatLogTemplate(Frame.AdventuresCombatLog)
            Skin.UIPanelButtonTemplate(Frame.CompleteFrame.ContinueButton)
            Skin.UIPanelButtonTemplate(Frame.CompleteFrame.SpeedButton)
        end
    end
    do --[[ Blizzard_AdventuresRewardsScreen ]]
        function Skin.AdventuresRewardsScreenTemplate(Frame)
            Skin.UIPanelButtonTemplate(Frame.FinalRewardsPanel.ContinueButton)
        end
    end
    do --[[ Blizzard_CovenantMissionUI ]]
        function Skin.CovenantMissionPageTemplate(Frame)
            Skin.NineSlicePanelTemplate(Frame.NineSlice)
            Skin.GarrisonMissionPageCloseButtonTemplate(Frame.CloseButton)
            Frame.CloseButton.CloseButtonBorder:SetAlpha(0)
            Skin.StartMissionButtonTemplate(Frame.StartMissionButton)
            Skin.GarrisonMissionPageCostWithTooltipTemplate(Frame.CostFrame)
        end
    end
end

function private.AddOns.Blizzard_GarrisonUI()
    ----====####$$$$%%%%%$$$$####====----
    --   Blizzard_GarrisonBuildingUI   --
    ----====####$$$$%%%%%$$$$####====----
    if not private.disabled.tooltips then
        Skin.TooltipBorderedFrameTemplate(_G.GarrisonBuildingFrame.BuildingLevelTooltip)
    end

    ----====####$$$$%%%%$$$$####====----
    --   Blizzard_GarrisonMissionUI   --
    ----====####$$$$%%%%$$$$####====----
    _G.hooksecurefunc("GarrisonMissionButton_SetReward", Hook.GarrisonMissionButton_SetReward)

    local GarrisonMissionFrame = _G.GarrisonMissionFrame
    GarrisonMissionFrame.Center = GarrisonMissionFrame.BackgroundTile
    Skin.GarrisonMissionFrameTemplate(GarrisonMissionFrame)
    Skin.GarrisonUITemplate(GarrisonMissionFrame)

    Skin.GarrisonMissionFrameTabTemplate(_G.GarrisonMissionFrameTab1)
    Skin.GarrisonMissionFrameTabTemplate(_G.GarrisonMissionFrameTab2)
    Util.PositionRelative("TOPLEFT", GarrisonMissionFrame, "BOTTOMLEFT", 20, -1, 1, "Right", {
        _G.GarrisonMissionFrameTab1,
        _G.GarrisonMissionFrameTab2,
    })

    ------------------
    -- FollowerList --
    ------------------
    local GarrFollowerList = GarrisonMissionFrame.FollowerList
    Skin.GarrisonListTemplateHeader(GarrFollowerList)
    Skin.MaterialFrameTemplate(GarrFollowerList.MaterialFrame)
    Skin.SearchBoxTemplate(GarrFollowerList.SearchBox)

    ----------------
    -- MissionTab --
    ----------------
    local GarrMissionTab = GarrisonMissionFrame.MissionTab
    Skin.GarrisonMissionListTemplate(GarrMissionTab.MissionList)
    Skin.FollowerMissionPageTemplate(GarrMissionTab.MissionPage)

    -- MissionPage --
    local GarrMissionPage = GarrMissionTab.MissionPage
    Skin.GarrisonMissionPageEnemyTemplate(GarrMissionPage.Enemy1)
    Skin.GarrisonMissionPageEnemyTemplate(GarrMissionPage.Enemy2)
    Skin.GarrisonMissionPageEnemyTemplate(GarrMissionPage.Enemy3)

    Skin.GarrisonMissionPageFollowerTemplate(GarrMissionPage.Follower1)
    Skin.GarrisonMissionPageFollowerTemplate(GarrMissionPage.Follower2)
    Skin.GarrisonMissionPageFollowerTemplate(GarrMissionPage.Follower3)

    -----------------
    -- FollowerTab --
    -----------------
    Skin.GarrisonFollowerTabTemplate(GarrisonMissionFrame.FollowerTab)

    ---------------------
    -- MissionComplete --
    ---------------------
    Skin.GarrisonMissionPageBaseTemplate(GarrisonMissionFrame.MissionComplete)
    Skin.GarrisonMissionCompleteTemplate(GarrisonMissionFrame.MissionComplete)

    Skin.GarrisonFollowerPortraitTemplate(_G.GarrisonFollowerPlacer)

    -- BlizzWTF: This should be flagged as hidden in XML
    _G.GarrisonMissionListTooltipThreatsFrame:Hide()

    ----====####$$$$%%%%%$$$$####====----
    --   Blizzard_GarrisonShipyardUI   --
    ----====####$$$$%%%%%$$$$####====----
    local GarrisonShipyardFrame = _G.GarrisonShipyardFrame
    Skin.GarrisonMissionFrameTemplate(GarrisonShipyardFrame)

    GarrisonShipyardFrame.BorderFrame.Center = GarrisonShipyardFrame.BackgroundTile
    Skin.GarrisonUITemplate(GarrisonShipyardFrame.BorderFrame)

    Skin.GarrisonMissionFrameTabTemplate(_G.GarrisonShipyardFrameTab1)
    Skin.GarrisonMissionFrameTabTemplate(_G.GarrisonShipyardFrameTab2)
    Util.PositionRelative("TOPLEFT", GarrisonShipyardFrame, "BOTTOMLEFT", 20, -1, 1, "Right", {
        _G.GarrisonShipyardFrameTab1,
        _G.GarrisonShipyardFrameTab2,
    })

    ------------------
    -- FollowerList --
    ------------------

    ----------------
    -- MissionTab --
    ----------------

    -----------------
    -- FollowerTab --
    -----------------

    ---------------------
    -- MissionComplete --
    ---------------------

    if not private.disabled.tooltips then
        Skin.FrameTypeFrame(_G.GarrisonBonusAreaTooltip)
        Skin.GarrisonBonusAreaTooltipFrameTemplate(_G.GarrisonBonusAreaTooltip.BonusArea)

        Skin.FrameTypeFrame(_G.GarrisonShipyardMapMissionTooltip)
        Skin.InternalEmbeddedItemTooltipTemplate(_G.GarrisonShipyardMapMissionTooltip.ItemTooltip)
        Skin.GarrisonBonusEffectFrameTemplate(_G.GarrisonShipyardMapMissionTooltip.BonusEffect)
        Skin.GarrisonBonusEffectFrameTemplate(_G.GarrisonShipyardMapMissionTooltip.BonusReward)
    end

    ----====####$$$$%%%%$$$$####====----
    --  Blizzard_GarrisonLandingPage  --
    ----====####$$$$%%%%$$$$####====----
    local GarrisonLandingPage = _G.GarrisonLandingPage
    local bg, tl, tr, bl, br, t, b, l, r = GarrisonLandingPage:GetRegions()
    Base.CreateBackdrop(GarrisonLandingPage, private.backdrop, {
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
    Skin.FrameTypeFrame(GarrisonLandingPage)
    GarrisonLandingPage.HeaderBar:Hide()

    Skin.UIPanelCloseButton(GarrisonLandingPage.CloseButton)

    Skin.GarrisonLandingPageTabTemplate(GarrisonLandingPage.ReportTab)
    Skin.GarrisonLandingPageTabTemplate(GarrisonLandingPage.FollowerTabButton)
    Skin.GarrisonLandingPageTabTemplate(GarrisonLandingPage.FleetTab)
    Util.PositionRelative("TOPLEFT", GarrisonLandingPage, "BOTTOMLEFT", 20, -1, 1, "Right", {
        GarrisonLandingPage.ReportTab,
        GarrisonLandingPage.FollowerTabButton,
        GarrisonLandingPage.FleetTab,
    })

    GarrisonLandingPage.Report.Background:SetDesaturated(true)
    GarrisonLandingPage.Report.Background:SetAlpha(0.5)
    GarrisonLandingPage.Report.List:GetRegions():SetDesaturated(true)
    Skin.MinimalHybridScrollBarTemplate(GarrisonLandingPage.Report.List.listScroll.scrollBar)
    GarrisonLandingPage.Report.InProgress:GetNormalTexture():SetAlpha(0)
    GarrisonLandingPage.Report.InProgress:SetHighlightTexture("")
    GarrisonLandingPage.Report.Available:GetNormalTexture():SetAlpha(0)
    GarrisonLandingPage.Report.Available:SetHighlightTexture("")

    Skin.BaseLandingPageFollowerListTemplate(GarrisonLandingPage.FollowerList)
    local LandingFollowerTab = GarrisonLandingPage.FollowerTab
    Skin.GarrisonFollowerPortraitTemplate(LandingFollowerTab.PortraitFrame)
    Skin.GarrisonFollowerXPBarTemplate(LandingFollowerTab.XPBar)
    Skin.GarrisonMissionFollowerDurabilityFrameTemplate(LandingFollowerTab.DurabilityFrame)

    Skin.BaseLandingPageFollowerListTemplate(GarrisonLandingPage.ShipFollowerList)

    ----====####$$$$%%%%%%%%$$$$####====----
    -- Blizzard_GarrisonCapacitiveDisplay --
    ----====####$$$$%%%%%%%%$$$$####====----
    local GarrisonCapacitiveDisplayFrame = _G.GarrisonCapacitiveDisplayFrame
    Skin.ButtonFrameTemplate(GarrisonCapacitiveDisplayFrame)

    local CapacitiveDisplay = GarrisonCapacitiveDisplayFrame.CapacitiveDisplay
    CapacitiveDisplay:SetPoint("TOPLEFT", 5, -private.FRAME_TITLE_HEIGHT)
    CapacitiveDisplay.IconBG:Hide()
    Skin.GarrisonFollowerPortraitTemplate(CapacitiveDisplay.ShipmentIconFrame.Follower)
    Skin.GarrisonCapacitiveItemButtonTemplate(CapacitiveDisplay.Reagents[1])

    -- /run GarrisonCapacitiveDisplayFrame.FinishedGlow.FinishedAnim:Play()
    GarrisonCapacitiveDisplayFrame.FinishedGlow:SetClipsChildren(true)
    GarrisonCapacitiveDisplayFrame.FinishedGlow.FinishedFlare:SetPoint("TOPLEFT", 0, 25)
    Skin.MagicButtonTemplate(GarrisonCapacitiveDisplayFrame.StartWorkOrderButton)
    Skin.MagicButtonTemplate(GarrisonCapacitiveDisplayFrame.CreateAllWorkOrdersButton)

    -- BlizzWTF: This should use NumericInputSpinnerTemplate
    GarrisonCapacitiveDisplayFrame.Count:ClearAllPoints()
    GarrisonCapacitiveDisplayFrame.Count:SetPoint("BOTTOM", -10, 4)
    Skin.GarrisonCapacitiveInputSpinner(GarrisonCapacitiveDisplayFrame.Count)

    ----====####$$$$%%%%%$$$$####====----
    --   Blizzard_GarrisonMonumentUI   --
    ----====####$$$$%%%%%$$$$####====----

    ----====####$$$$%%%%$$$$####====----
    --  Blizzard_GarrisonRecruiterUI  --
    ----====####$$$$%%%%$$$$####====----

    ----====####$$$$%%%%%$$$$####====----
    --   Blizzard_OrderHallMissionUI   --
    ----====####$$$$%%%%%$$$$####====----
    local OrderHallMissionFrame = _G.OrderHallMissionFrame
    Util.Mixin(OrderHallMissionFrame, Hook.OrderHallMission)
    OrderHallMissionFrame.Center = OrderHallMissionFrame.BackgroundTile
    Skin.GarrisonMissionFrameTemplate(OrderHallMissionFrame)
    Skin.GarrisonUITemplate(OrderHallMissionFrame)

    OrderHallMissionFrame.ClassHallIcon:SetClipsChildren(true)
    OrderHallMissionFrame.ClassHallIcon:SetFrameLevel(OrderHallMissionFrame:GetFrameLevel() + 1)
    OrderHallMissionFrame.ClassHallIcon:SetFrameStrata(OrderHallMissionFrame:GetFrameStrata())
    OrderHallMissionFrame.ClassHallIcon:SetPoint("TOPLEFT")
    OrderHallMissionFrame.ClassHallIcon:SetSize(200, 200)
    local _, className = _G.UnitClass("player")
    OrderHallMissionFrame.ClassHallIcon.Icon:ClearAllPoints()
    OrderHallMissionFrame.ClassHallIcon.Icon:SetPoint("CENTER", OrderHallMissionFrame.ClassHallIcon, "TOPLEFT", 50, -50)
    OrderHallMissionFrame.ClassHallIcon.Icon:SetAtlas("legionmission-landingpage-background-"..className, true)
    OrderHallMissionFrame.ClassHallIcon.Icon:SetDesaturated(true)
    OrderHallMissionFrame.ClassHallIcon.Icon:SetAlpha(0.8)

    Skin.OrderHallFrameTabButtonTemplate(OrderHallMissionFrame.Tab1)
    Skin.OrderHallFrameTabButtonTemplate(OrderHallMissionFrame.Tab2)
    Skin.OrderHallFrameTabButtonTemplate(OrderHallMissionFrame.Tab3)

    ------------------
    -- FollowerList --
    ------------------
    local OrderHallFollowerList = OrderHallMissionFrame.FollowerList
    Skin.GarrisonListTemplateHeader(OrderHallFollowerList)
    Skin.MaterialFrameTemplate(OrderHallFollowerList.MaterialFrame)
    OrderHallFollowerList.MaterialFrame:SetPoint("TOPLEFT", OrderHallFollowerList, "BOTTOMLEFT", 0, -2)
    OrderHallFollowerList.MaterialFrame:SetPoint("BOTTOMRIGHT", 0, -30)
    Skin.SearchBoxTemplate(OrderHallFollowerList.SearchBox)

    ------------
    -- MapTab --
    ------------
    local OrderHallMapTab = OrderHallMissionFrame.MapTab
    OrderHallMapTab.ScrollContainer:ClearAllPoints()
    OrderHallMapTab.ScrollContainer:SetPoint("TOPLEFT")
    OrderHallMapTab.ScrollContainer:SetPoint("BOTTOMRIGHT")

    ----------------
    -- MissionTab --
    ----------------
    local OrderHallMissionTab = OrderHallMissionFrame.MissionTab
    Skin.GarrisonMissionListTemplate(OrderHallMissionTab.MissionList)

    local CombatAllyUI = OrderHallMissionTab.MissionList.CombatAllyUI
    Base.SetBackdrop(CombatAllyUI, Color.frame)
    CombatAllyUI.Background:Hide()

    local AddFollowerButton = CombatAllyUI.Available.AddFollowerButton
    AddFollowerButton.EmptyPortrait:Hide()
    AddFollowerButton.Plus:SetSize(42, 42)
    AddFollowerButton.Plus:SetPoint("CENTER", 0, 5)
    local portraitBG = _G.CreateFrame("Frame", nil, AddFollowerButton)
    portraitBG:SetFrameLevel(AddFollowerButton:GetFrameLevel())
    portraitBG:SetPoint("TOPLEFT", AddFollowerButton.Plus, -1, 1)
    portraitBG:SetPoint("BOTTOMRIGHT", AddFollowerButton.Plus, 1, -1)
    Base.SetBackdrop(portraitBG, Color.button, 1)
    AddFollowerButton.PortraitHighlight:SetTexture([[Interface\Buttons\CheckButtonHilight-Blue]])
    AddFollowerButton.PortraitHighlight:SetTexCoord(0.234375, 0.765625, 0.234375, 0.765625)
    AddFollowerButton.PortraitHighlight:SetAllPoints(portraitBG)

    Skin.GarrisonFollowerPortraitTemplate(CombatAllyUI.InProgress.PortraitFrame)
    Skin.GarrisonFollowerCombatAllySpellTemplate(CombatAllyUI.InProgress.CombatAllySpell)
    Skin.UIPanelButtonTemplate(CombatAllyUI.InProgress.Unassign)

    OrderHallMissionTab.ZoneSupportMissionPageBackground.Background:ClearAllPoints()
    OrderHallMissionTab.ZoneSupportMissionPageBackground.Background:SetAllPoints(OrderHallMissionTab)

    local ZoneSupportMissionPage = OrderHallMissionTab.ZoneSupportMissionPage
    ZoneSupportMissionPage.ButtonFrame:SetAtlas("GarrMission_PartyBuffsBG", true)
    ZoneSupportMissionPage.ButtonFrame:SetWidth(400)
    ZoneSupportMissionPage.ButtonFrame:SetPoint("TOP", ZoneSupportMissionPage, "BOTTOM", 0, -13)
    Skin.GarrisonFollowerMissionRewardsFrameTemplate(ZoneSupportMissionPage)
    Skin.GarrisonMissionPageCloseButtonTemplate(ZoneSupportMissionPage.CloseButton)
    ZoneSupportMissionPage.CloseButton:SetPoint("TOPRIGHT", -5, 426)
    Skin.GarrisonMissionPageCostWithTooltipTemplate(ZoneSupportMissionPage.CostFrame)
    Skin.GarrisonMissionPageFollowerTemplate(ZoneSupportMissionPage.Follower1)
    Skin.GarrisonFollowerCombatAllySpellTemplate(ZoneSupportMissionPage.CombatAllySpell)
    Skin.StartMissionButtonTemplate(ZoneSupportMissionPage.StartMissionButton)

    -----------------
    -- FollowerTab --
    -----------------
    local OrderHallFollowerTab = OrderHallMissionFrame.FollowerTab
    Skin.GarrisonFollowerTabTemplate(OrderHallFollowerTab)

    ---------------------
    -- MissionComplete --
    ---------------------
    OrderHallMissionFrame.MissionCompleteBackground:SetAllPoints(OrderHallMissionFrame)
    local OrderHallMissionComplete = OrderHallMissionFrame.MissionComplete
    Skin.GarrisonMissionPageBaseTemplate(OrderHallMissionComplete)
    Skin.GarrisonMissionCompleteTemplate(OrderHallMissionComplete)
    Skin.GarrisonFollowerMissionCompleteStageTemplate(OrderHallMissionComplete.Stage)
    Skin.GarrisonFollowerMissionRewardsFrameTemplate(OrderHallMissionComplete.BonusRewards)


    ----====####$$$$%%%%%$$$$####====----
    --      Blizzard_BFAMissionUI      --
    ----====####$$$$%%%%%$$$$####====----
    local BFAMissionFrame = _G.BFAMissionFrame
    Util.Mixin(BFAMissionFrame, Hook.BFAMission)
    BFAMissionFrame.Center = BFAMissionFrame.BackgroundTile
    Skin.GarrisonMissionFrameTemplate(BFAMissionFrame)
    Skin.GarrisonUITemplate(BFAMissionFrame)
    BFAMissionFrame.OverlayElements.CloseButtonBorder:Hide()
    BFAMissionFrame.TitleScroll:Hide()

    Skin.OrderHallFrameTabButtonTemplate(BFAMissionFrame.Tab1)
    Skin.OrderHallFrameTabButtonTemplate(BFAMissionFrame.Tab2)
    Skin.OrderHallFrameTabButtonTemplate(BFAMissionFrame.Tab3)

    ------------------
    -- FollowerList --
    ------------------
    local BFAFollowerList = BFAMissionFrame.FollowerList
    Skin.GarrisonListTemplateHeader(BFAFollowerList)
    Skin.MaterialFrameTemplate(BFAFollowerList.MaterialFrame)
    BFAFollowerList.MaterialFrame:SetPoint("TOPLEFT", BFAFollowerList, "BOTTOMLEFT", 0, -2)
    BFAFollowerList.MaterialFrame:SetPoint("BOTTOMRIGHT", 0, -30)
    Skin.SearchBoxTemplate(BFAFollowerList.SearchBox)

    ------------
    -- MapTab --
    ------------
    local BFAMapTab = BFAMissionFrame.MapTab
    BFAMapTab.ScrollContainer:ClearAllPoints()
    BFAMapTab.ScrollContainer:SetPoint("TOPLEFT")
    BFAMapTab.ScrollContainer:SetPoint("BOTTOMRIGHT")

    ----------------
    -- MissionTab --
    ----------------
    local BFAMissionTab = BFAMissionFrame.MissionTab
    Skin.GarrisonMissionListTemplate(BFAMissionTab.MissionList)
    Skin.OrderHallMissionPageTemplate(BFAMissionTab.MissionPage)

    -----------------
    -- FollowerTab --
    -----------------
    local BFAFollowerTab = BFAMissionFrame.FollowerTab
    Skin.GarrisonFollowerTabTemplate(BFAFollowerTab)


    ---------------------
    -- MissionComplete --
    ---------------------
    BFAMissionFrame.MissionCompleteBackground:SetAllPoints(BFAMissionFrame)
    local BFAMissionComplete = BFAMissionFrame.MissionComplete
    Skin.GarrisonMissionPageBaseTemplate(BFAMissionComplete)
    Skin.GarrisonMissionCompleteTemplate(BFAMissionComplete)
    Skin.GarrisonFollowerMissionCompleteStageTemplate(BFAMissionComplete.Stage)
    Skin.GarrisonFollowerMissionRewardsFrameTemplate(BFAMissionComplete.BonusRewards)
    Skin.GarrisonMissionBonusRewardsTemplate(BFAMissionComplete.BonusRewards)


    ----====####$$$$%%%%$$$$####====----
    --  Blizzard_AdventuresCombatLog  --
    ----====####$$$$%%%%$$$$####====----


    ----====####$$$$%%%%%%%$$$$####====----
    -- Blizzard_AdventuresCompleteScreen --
    ----====####$$$$%%%%%%%$$$$####====----


    ----====####$$$$%%%%%$$$$####====----
    --     Blizzard_AdventuresPuck     --
    ----====####$$$$%%%%%$$$$####====----


    ----====####$$$$%%%%$$$$####====----
    --    Blizzard_AdventuresBoard    --
    ----====####$$$$%%%%$$$$####====----


    ----====####$$$$%%%%%%$$$$####====----
    -- Blizzard_AdventuresRewardsScreen --
    ----====####$$$$%%%%%%$$$$####====----


    ----====####$$$$%%%%$$$$####====----
    --   Blizzard_CovenantMissionUI   --
    ----====####$$$$%%%%$$$$####====----
    local CovenantMissionFrame = _G.CovenantMissionFrame
    Util.Mixin(CovenantMissionFrame, Hook.CovenantMission)
    CovenantMissionFrame.Center = CovenantMissionFrame.BackgroundTile
    Skin.GarrisonMissionFrameTemplate(CovenantMissionFrame)
    Skin.GarrisonUITemplate(CovenantMissionFrame)

    CovenantMissionFrame.OverlayElements.CloseButtonBorder:Hide()
    CovenantMissionFrame.RaisedBorder:Hide()
    Skin.OrderHallFrameTabButtonTemplate(CovenantMissionFrame.Tab1)
    Skin.OrderHallFrameTabButtonTemplate(CovenantMissionFrame.Tab2)
    Skin.OrderHallFrameTabButtonTemplate(CovenantMissionFrame.Tab3)

    ------------------
    -- FollowerList --
    ------------------
    local CovenantFollowerList = CovenantMissionFrame.FollowerList
    Skin.CovenantFollowerListTemplate(CovenantFollowerList)
    Skin.MaterialFrameTemplate(CovenantFollowerList.MaterialFrame)
    CovenantFollowerList.MaterialFrame:SetPoint("TOPLEFT", CovenantFollowerList, "BOTTOMLEFT", 0, -2)
    CovenantFollowerList.MaterialFrame:SetPoint("BOTTOMRIGHT", 0, -30)
    Skin.UIPanelButtonTemplate(CovenantFollowerList.HealAllButton)

    ------------
    -- MapTab --
    ------------
    local CovenantMapTab = CovenantMissionFrame.MapTab
    CovenantMapTab.ScrollContainer:ClearAllPoints()
    CovenantMapTab.ScrollContainer:SetPoint("TOPLEFT")
    CovenantMapTab.ScrollContainer:SetPoint("BOTTOMRIGHT")

    ----------------
    -- MissionTab --
    ----------------
    local CovenantMissionTab = CovenantMissionFrame.MissionTab
    Skin.CovenantMissionListTemplate(CovenantMissionTab.MissionList)
    Skin.CovenantMissionPageTemplate(CovenantMissionTab.MissionPage)

    -----------------
    -- FollowerTab --
    -----------------
    local CovenantFollowerTab = CovenantMissionFrame.FollowerTab
    Skin.CovenantFollowerTabTemplate(CovenantFollowerTab)

    -----------------
    -- FollowerTab --
    -----------------
    local CovenantMissionComplete = CovenantMissionFrame.MissionComplete
    Skin.AdventuresCompleteScreenTemplate(CovenantMissionComplete)


end
