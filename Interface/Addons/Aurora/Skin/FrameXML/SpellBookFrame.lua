local _, private = ...
if not private.isBCC then return end

--[[ Lua Globals ]]
-- luacheck: globals

--[[ Core ]]
local Aurora = private.Aurora
local Base = Aurora.Base
local Hook, Skin = Aurora.Hook, Aurora.Skin
local Color, Util = Aurora.Color, Aurora.Util

do --[[ FrameXML\SpellBookFrame.lua ]]
    function Hook.SpellButton_UpdateButton(self)
        if _G.SpellBookFrame.bookType == _G.BOOKTYPE_PROFESSION then return end

        local slot = _G.SpellBook_GetSpellBookSlot(self)
        if slot then
            if self.shine then
                local shine = self.shine
                shine:ClearAllPoints()
                shine:SetPoint("TOPLEFT", 3, -2)
                shine:SetPoint("BOTTOMRIGHT", -1, 1)
            end
        else
            self:SetBackdropBorderColor(Color.black:GetRGB())
        end
    end
    function Hook.SpellBookFrame_UpdateSkillLineTabs(self)
        local numSkillLineTabs = _G.GetNumSpellTabs()
        for i = 1, _G.MAX_SKILLLINE_TABS do
            local skillLineTab = _G["SpellBookSkillLineTab"..i]
            local prevTab = _G["SpellBookSkillLineTab"..i-1]
            if i <= numSkillLineTabs and _G.SpellBookFrame.bookType == _G.BOOKTYPE_SPELL then
                local _, _, _, _, isGuild, _, shouldHide = _G.GetSpellTabInfo(i)

                if not shouldHide then
                    -- Guild tab gets additional space
                    if prevTab then
                        if isGuild then
                            skillLineTab:SetPoint("TOPLEFT", prevTab, "BOTTOMLEFT", 0, -25)
                        elseif skillLineTab.isOffSpec and not prevTab.isOffSpec then
                            skillLineTab:SetPoint("TOPLEFT", prevTab, "BOTTOMLEFT", 0, -20)
                        else
                            skillLineTab:SetPoint("TOPLEFT", prevTab, "BOTTOMLEFT", 0, -5)
                        end
                    end
                end
            else
                _G["SpellBookSkillLineTab"..i.."Flash"]:Hide()
                skillLineTab:Hide()
            end
        end
    end
    function Hook.FormatProfession(frame, index)
        if index then
            local _, texture = _G.GetProfessionInfo(index)
            if frame.icon and texture then
                frame.icon:SetTexture(texture)
            end
        end
    end
end

do --[[ FrameXML\SpellBookFrame.xml ]]
    function Skin.SpellBookSkillLineTabTemplate(CheckButton)
        Skin.SideTabTemplate(CheckButton)
    end
    function Skin.SpellBookFrameTabButtonTemplate(Button)
        Button:SetHeight(28)
        Button:SetNormalTexture("")
        Button:SetHighlightTexture("")

        Skin.FrameTypeFrame(Button)
        Base.SetHighlight(Button)
    end
    function Skin.SpellButtonTemplate(CheckButton)
        local name = CheckButton:GetName()

        CheckButton.EmptySlot:Hide()
        CheckButton.SpellSubName:SetTextColor(Color.gray:GetRGB())

        Base.CropIcon(_G[name.."IconTexture"])
        Base.CreateBackdrop(CheckButton, {
            bgFile = [[Interface\PaperDoll\UI-Backpack-EmptySlot]],
            tile = false,
            offsets = {
                left = -1,
                right = -1,
                top = -1,
                bottom = -1,
            }
        })
        CheckButton:SetBackdropColor(1, 1, 1, 0.75)
        CheckButton:SetBackdropBorderColor(Color.frame, 1)
        Base.CropIcon(CheckButton:GetBackdropTexture("bg"))

        local autoCast = _G[name.."AutoCastable"]
        autoCast:ClearAllPoints()
        autoCast:SetPoint("TOPLEFT")
        autoCast:SetPoint("BOTTOMRIGHT")
        autoCast:SetTexCoord(0.2344, 0.75, 0.25, 0.75)

        CheckButton:SetNormalTexture("")
        Base.CropIcon(CheckButton:GetPushedTexture())
        Base.CropIcon(CheckButton:GetHighlightTexture())
        Base.CropIcon(CheckButton:GetCheckedTexture())
    end
    function Skin.ProfessionButtonTemplate(CheckButton)
        Base.CropIcon(CheckButton.iconTexture, CheckButton)

        local nameFrame = _G[CheckButton:GetName().."NameFrame"]
        nameFrame:SetTexture([[Interface\Spellbook\Spellbook-Parts]])
        nameFrame:SetTexCoord(0.31250000, 0.96484375, 0.37109375, 0.52343750)
        nameFrame:SetDesaturated(true)
        nameFrame:SetAlpha(1)
        nameFrame:SetSize(167, 39)
        nameFrame:SetPoint("LEFT", CheckButton.iconTexture, "RIGHT", -2, 0)

        Base.CropIcon(CheckButton:GetPushedTexture())
        Base.CropIcon(CheckButton:GetHighlightTexture())
        Base.CropIcon(CheckButton:GetCheckedTexture())
    end
    function Skin.ProfessionStatusBarTemplate(StatusBar)
        local name = StatusBar:GetName()
        Skin.FrameTypeStatusBar(StatusBar)
        StatusBar:SetStatusBarColor(Color.green:GetRGB())

        StatusBar:SetSize(115, 12)
        StatusBar.rankText:SetPoint("CENTER")

        _G[name.."Left"]:Hide()
        StatusBar.capRight:SetAlpha(0)

        _G[name.."BGLeft"]:Hide()
        _G[name.."BGMiddle"]:Hide()
        _G[name.."BGRight"]:Hide()
    end
    function Skin.PrimaryProfessionTemplate(Button)
        local name = Button:GetName()

        Button.professionName:SetPoint("TOPLEFT", Button.icon, "TOPRIGHT", 12, 0)
        Button.missingHeader:SetTextColor(Color.white:GetRGB())
        Button.missingText:SetTextColor(Color.grayLight:GetRGB())
        _G[name.."IconBorder"]:Hide()

        Button.icon:ClearAllPoints()
        Button.icon:SetPoint("TOPLEFT", 6, -6)
        Button.icon:SetSize(81, 81)
        Base.CropIcon(Button.icon, Button)

        Skin.ProfessionButtonTemplate(Button.button2)
        Button.button2:SetPoint("TOPRIGHT", -109, 0)
        Skin.ProfessionButtonTemplate(Button.button1)
        Button.button1:SetPoint("TOPLEFT", Button.button2, "BOTTOMLEFT", 0, -3)
        Skin.ProfessionStatusBarTemplate(Button.statusBar)
        Button.statusBar:ClearAllPoints()
        Button.statusBar:SetPoint("BOTTOMLEFT", Button.icon, "BOTTOMRIGHT", 9, 5)

        Button.unlearn:ClearAllPoints()
        Button.unlearn:SetPoint("BOTTOMRIGHT", Button.icon)
    end
    function Skin.SecondaryProfessionTemplate(Button)
        Skin.ProfessionButtonTemplate(Button.button2)
        Skin.ProfessionButtonTemplate(Button.button1)
        Skin.ProfessionStatusBarTemplate(Button.statusBar)
        Button.statusBar:SetPoint("BOTTOMLEFT", -10, 5)

        Button.rank:SetPoint("BOTTOMLEFT", Button.statusBar, "TOPLEFT", 3, 4)
        Button.missingHeader:SetTextColor(Color.white:GetRGB())
        Button.missingText:SetTextColor(Color.grayLight:GetRGB())
    end
end

function private.FrameXML.SpellBookFrame()
    _G.hooksecurefunc("SpellButton_UpdateButton", Hook.SpellButton_UpdateButton)
    _G.hooksecurefunc("SpellBookFrame_UpdateSkillLineTabs", Hook.SpellBookFrame_UpdateSkillLineTabs)

    local SpellBookFrame = _G.SpellBookFrame
    Skin.FrameTypeFrame(SpellBookFrame)
    SpellBookFrame:SetBackdropOption("offsets", {
        left = 14,
        right = 34,
        top = 14,
        bottom = 75,
    })

    local portrait, tl, tr, bl, br, title, page = SpellBookFrame:GetRegions()
    portrait:Hide()
    tl:Hide()
    tr:Hide()
    bl:Hide()
    br:Hide()

    local bg = SpellBookFrame:GetBackdropTexture("bg")
    title:ClearAllPoints()
    title:SetPoint("TOPLEFT", bg)
    title:SetPoint("BOTTOMRIGHT", bg, "TOPRIGHT", 0, -private.FRAME_TITLE_HEIGHT)
    page:SetTextColor(Color.gray:GetRGB())

    Skin.SpellBookFrameTabButtonTemplate(_G.SpellBookFrameTabButton1)
    Skin.SpellBookFrameTabButtonTemplate(_G.SpellBookFrameTabButton2)
    Skin.SpellBookFrameTabButtonTemplate(_G.SpellBookFrameTabButton3)
    Util.PositionRelative("TOPLEFT", bg, "BOTTOMLEFT", 20, -1, 1, "Right", {
        _G.SpellBookFrameTabButton1,
        _G.SpellBookFrameTabButton2,
        _G.SpellBookFrameTabButton3,
    })

    _G.SpellBookPageText:SetTextColor(Color.gray:GetRGB())
    Skin.NavButtonPrevious(_G.SpellBookPrevPageButton)
    Skin.NavButtonNext(_G.SpellBookNextPageButton)

    Skin.UIPanelCloseButton(_G.SpellBookCloseButton)

    ----------------
    -- SpellIcons --
    ----------------
    for i = 1, _G.SPELLS_PER_PAGE do
        Skin.SpellButtonTemplate(_G["SpellButton"..i])
    end

    --------------
    -- SideTabs --
    --------------
    for i = 1, _G.MAX_SKILLLINE_TABS do
        local tab = _G["SpellBookSkillLineTab"..i]
        Skin.SpellBookSkillLineTabTemplate(tab)
        tab:ClearAllPoints()
        if i == 1 then
            tab:SetPoint("TOPLEFT", bg, "TOPRIGHT", 2, -40)
        else
            tab:SetPoint("TOPLEFT", _G["SpellBookSkillLineTab"..i - 1], "BOTTOMLEFT", 0, -5)
        end
    end
end
