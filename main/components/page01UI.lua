
local _Class   = {}
local layerUI  = require("components.kwik.layerUI")
local const    = require("vo.page01VO").const
local composer = require( "composer" )
local _K       = require("Application")
---------------------
---------------------
_Class.new = function(scene)
  local UI = layerUI.new()
    UI.scene     = scene
    UI.page      = "page01"
    UI.curPage   = 01
    -- All components on a table
    UI.layer     = {}
    -- All audio files on a table
    UI.allAudios = {}
    UI.allAudios.kAutoPlay = 0
    UI.tSearch   = nil
    UI.numPages = 2   -- number of pages in the project
    function UI:setLanguge()
      end
  --
  function UI:setVars()
        self:_vars("image",  const.background_image_, false)
        self:_vars("image",  const.ballons_image_, false)
        self:_vars("meta",  const.page_meta_panels, false)
        self:_vars("button",  const.Whole_Image_button_but_Whole, false)
        self:_vars("button",  const.Tap_button_but_Tap, false)
        self:_vars("button",  const.Auto_button_but_Auto, false)
        self:_vars("swipe",  const.page_swipe_background, false)
        self:_vars("anim",  const.bl11_anim_wRotation_bl11, false)
        self:_vars("anim",  const.pn1_anim_wPulse_pn1, false)
    end
  --
  function UI:create()
   self:_create("common",  const.page_common, false)
    self:setVars()
    self:setLanguge()
        self:_create("image",  const.background_image_, false)
        self:_create("image",  const.ballons_image_, false)
        self:_create("meta",  const.page_meta_panels, false)
        self:_create("button",  const.Whole_Image_button_but_Whole, false)
        self:_create("button",  const.Tap_button_but_Tap, false)
        self:_create("button",  const.Auto_button_but_Auto, false)
        self:_create("swipe",  const.page_swipe_background, false)
        self:_create("anim",  const.bl11_anim_wRotation_bl11, false)
        self:_create("anim",  const.pn1_anim_wPulse_pn1, false)
    end
  --
  function UI:didShow(params)
    self:_didShow("common",  const.page_common, false)
        self:_didShow("image",  const.background_image_, false)
        self:_didShow("image",  const.ballons_image_, false)
        self:_didShow("meta",  const.page_meta_panels, false)
        self:_didShow("button",  const.Whole_Image_button_but_Whole, false)
        self:_didShow("button",  const.Tap_button_but_Tap, false)
        self:_didShow("button",  const.Auto_button_but_Auto, false)
        self:_didShow("swipe",  const.page_swipe_background, false)
        self:_didShow("anim",  const.bl11_anim_wRotation_bl11, false)
        self:_didShow("anim",  const.pn1_anim_wPulse_pn1, false)
    end
  --
  function UI:didHide(params)
    self:_didHide("common",  const.page_common, false)
        self:_didHide("image",  const.background_image_, false)
        self:_didHide("image",  const.ballons_image_, false)
        self:_didHide("meta",  const.page_meta_panels, false)
        self:_didHide("button",  const.Whole_Image_button_but_Whole, false)
        self:_didHide("button",  const.Tap_button_but_Tap, false)
        self:_didHide("button",  const.Auto_button_but_Auto, false)
        self:_didHide("swipe",  const.page_swipe_background, false)
        self:_didHide("anim",  const.bl11_anim_wRotation_bl11, false)
        self:_didHide("anim",  const.pn1_anim_wPulse_pn1, false)
    end
  --
  function UI:destroy(params)
    self:_destroy("common",  const.page_common)
        self:_destroy("image",  const.background_image_, false)
        self:_destroy("image",  const.ballons_image_, false)
        self:_destroy("meta",  const.page_meta_panels, false)
        self:_destroy("button",  const.Whole_Image_button_but_Whole, false)
        self:_destroy("button",  const.Tap_button_but_Tap, false)
        self:_destroy("button",  const.Auto_button_but_Auto, false)
        self:_destroy("swipe",  const.page_swipe_background, false)
        self:_destroy("anim",  const.bl11_anim_wRotation_bl11, false)
        self:_destroy("anim",  const.pn1_anim_wPulse_pn1, false)
    end
  --
  function UI:touch(event)
      print("event.name: "..event.name)
  end
  function UI:resume(params)
        self:_resume("image",  const.background_image_, false)
        self:_resume("image",  const.ballons_image_, false)
        self:_resume("meta",  const.page_meta_panels, false)
        self:_resume("button",  const.Whole_Image_button_but_Whole, false)
        self:_resume("button",  const.Tap_button_but_Tap, false)
        self:_resume("button",  const.Auto_button_but_Auto, false)
        self:_resume("swipe",  const.page_swipe_background, false)
        self:_resume("anim",  const.bl11_anim_wRotation_bl11, false)
        self:_resume("anim",  const.pn1_anim_wPulse_pn1, false)
    end
  --
  return  UI
end
--
return _Class