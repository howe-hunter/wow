local _, private = ...
if not private.isBCC then return end

--[[ Lua Globals ]]
-- luacheck: globals select next

--[[ Core ]]
local Aurora = private.Aurora
local Base = Aurora.Base
local Hook, Skin = Aurora.Hook, Aurora.Skin
local Color, Util = Aurora.Color, Aurora.Util

do --[[ FrameXML\UIPanelTemplates.lua ]]
    function Hook.SquareButton_SetIcon(self, name)
        name = name:upper()
        if not self.GetBackdropTexture then return end

        local bg = self:GetBackdropTexture("bg")
        if name == "LEFT" then
            self.icon:SetPoint("TOPLEFT", bg, 8, -4)
            self.icon:SetPoint("BOTTOMRIGHT", bg, -8, 4)
            Base.SetTexture(self.icon, "arrowLeft")
        elseif name == "RIGHT" then
            self.icon:SetPoint("TOPLEFT", bg, 8, -4)
            self.icon:SetPoint("BOTTOMRIGHT", bg, -8, 4)
            Base.SetTexture(self.icon, "arrowRight")
        elseif name == "UP" then
            self.icon:SetPoint("TOPLEFT", bg, 4, -8)
            self.icon:SetPoint("BOTTOMRIGHT", bg, -4, 8)
            Base.SetTexture(self.icon, "arrowUp")
        elseif name == "DOWN" then
            self.icon:SetPoint("TOPLEFT", bg, 4, -8)
            self.icon:SetPoint("BOTTOMRIGHT", bg, -4, 8)
            Base.SetTexture(self.icon, "arrowDown")
        end
    end
end


do --[[ FrameXML\UIPanelTemplates.xml ]]
    Skin.GameMenuButtonTemplate = Skin.UIPanelButtonTemplate
    function Skin.UIPanelInfoButton(Button)
        Button.texture:SetTexture([[Interface\Common\help-i]])
        Button.texture:SetTexCoord(0.234375, 0.765625, 0.234375, 0.765625)
        Button.texture:SetSize(16, 16)

        local highlight = Button:GetHighlightTexture()
        highlight:SetTexture([[Interface\Common\help-i]])
        highlight:SetTexCoord(0.234375, 0.765625, 0.234375, 0.765625)
        highlight:SetSize(16, 16)
    end
    function Skin.UIPanelSquareButton(Button, direction)
        Skin.FrameTypeButton(Button)
        Button:SetBackdropOption("offsets", {
            left = 2,
            right = 2,
            top = 2,
            bottom = 2,
        })

        if direction then
            Hook.SquareButton_SetIcon(Button, direction)
        end
    end

    function Skin.GlowBoxTemplate(Frame)
        Frame.BG:Hide()

        Frame.GlowTopLeft:Hide()
        Frame.GlowTopRight:Hide()
        Frame.GlowBottomLeft:Hide()
        Frame.GlowBottomRight:Hide()

        Frame.GlowTop:Hide()
        Frame.GlowBottom:Hide()
        Frame.GlowLeft:Hide()
        Frame.GlowRight:Hide()

        Frame.ShadowTopLeft:Hide()
        Frame.ShadowTopRight:Hide()
        Frame.ShadowBottomLeft:Hide()
        Frame.ShadowBottomRight:Hide()

        Frame.ShadowTop:Hide()
        Frame.ShadowBottom:Hide()
        Frame.ShadowLeft:Hide()
        Frame.ShadowRight:Hide()

        Base.SetBackdrop(Frame, Color.yellow:Lightness(-0.8), 0.75)
        Frame:SetBackdropBorderColor(Color.yellow)
    end
    function Skin.GlowBoxArrowTemplate(Frame, direction)
        direction = direction or "Down"
        local parent = Frame:GetParent()
        if not parent.info then
            if direction == "Left" or direction == "Right" then
                Frame:SetSize(21, 53)
            else
                Frame:SetSize(53, 21)
            end

            Base.SetTexture(Frame.Arrow, "arrow"..direction)
        end
        Frame.Arrow:SetAllPoints()
        Frame.Arrow:SetVertexColor(1, 1, 0)
        Frame.Glow:Hide()
    end
    function Skin.ThinBorderTemplate(Frame)
        local edge = private.backdrop.edgeSize
        Frame.TopLeft:SetSize(edge, edge)
        Frame.TopRight:SetSize(edge, edge)
        Frame.BottomLeft:SetSize(edge, edge)
        Frame.BottomRight:SetSize(edge, edge)

        Frame.TopLeft:SetPoint("TOPLEFT")
        Frame.TopRight:SetPoint("TOPRIGHT")
        Frame.BottomLeft:SetPoint("BOTTOMLEFT")
        Frame.BottomRight:SetPoint("BOTTOMRIGHT")
    end

    function Skin.BaseBasicFrameTemplate(Frame)
        Frame.TopLeftCorner:Hide()
        Frame.TopRightCorner:Hide()
        Frame.TopBorder:SetTexture("")

        local titleText = Frame.TitleText
        titleText:ClearAllPoints()
        titleText:SetPoint("TOPLEFT")
        titleText:SetPoint("BOTTOMRIGHT", Frame, "TOPRIGHT", 0, -private.FRAME_TITLE_HEIGHT)

        Frame.BotLeftCorner:Hide()
        Frame.BotRightCorner:Hide()
        Frame.BottomBorder:Hide()
        Frame.LeftBorder:Hide()
        Frame.RightBorder:Hide()
        Skin.FrameTypeFrame(Frame)

        Skin.UIPanelCloseButton(Frame.CloseButton)
    end
    function Skin.BasicFrameTemplate(Frame)
        Skin.BaseBasicFrameTemplate(Frame)

        Frame.Bg:Hide()
        Frame.TitleBg:Hide()
        Frame.TopTileStreaks:SetTexture("")
    end

    function Skin.HorizontalBarTemplate(Frame)
        Frame:SetHeight(1)
        local name = Frame:GetName()
        _G[name.."Bg"]:SetColorTexture(Color.white.r, Color.white.g, Color.white.b, Color.frame.a)

        _G[name.."TopLeftCorner"]:Hide()
        _G[name.."TopRightCorner"]:Hide()
        _G[name.."BotLeftCorner"]:Hide()
        _G[name.."BotRightCorner"]:Hide()
        _G[name.."TopBorder"]:Hide()
        _G[name.."BottomBorder"]:Hide()
    end
    function Skin.TranslucentFrameTemplate(Frame)
        Frame.Bg:Hide()

        Frame.TopLeftCorner:Hide()
        Frame.TopRightCorner:Hide()
        Frame.BottomLeftCorner:Hide()
        Frame.BottomRightCorner:Hide()

        Frame.TopBorder:Hide()
        Frame.BottomBorder:Hide()
        Frame.LeftBorder:Hide()
        Frame.RightBorder:Hide()
        Skin.FrameTypeFrame(Frame)
        Frame:SetBackdropOption("offsets", {
            left = 5,
            right = 5,
            top = 5,
            bottom = 5,
        })
    end
    function Skin.ThinGoldEdgeTemplate(Frame)
        local name = Util.GetName(Frame)
        _G[name.."Left"]:Hide()
        _G[name.."Right"]:Hide()
        _G[name.."Middle"]:Hide()

        Base.SetBackdrop(Frame, Color.frame)
        Frame:SetBackdropBorderColor(Color.yellow)
    end
    function Skin.GlowBorderTemplate(Frame)
    end

    function Skin.MainHelpPlateButton(Frame)
        Frame.Ring:Hide()

        local highlight = Frame:GetHighlightTexture()
        highlight:SetPoint("CENTER")
        highlight:SetSize(38, 38)
    end
    function Skin.HelpPlateButton(Button)
        Button.BgGlow:SetPoint("CENTER")
        Button.BgGlow:SetSize(38, 38)

        local highlight = Button:GetHighlightTexture()
        highlight:SetPoint("CENTER")
        highlight:SetSize(38, 38)
    end
    function Skin.HelpPlateBox(Frame)
        Skin.ThinBorderTemplate(Frame)
    end
    function Skin.HelpPlateBoxHighlight(Frame)
        Skin.GlowBorderTemplate(Frame)
    end
    function Skin.UIExpandingButtonTemplate(Button)
        Skin.UIPanelSquareButton(Button)
    end
end

function private.FrameXML.UIPanelTemplates()
    _G.hooksecurefunc("SquareButton_SetIcon", Hook.SquareButton_SetIcon)
end
