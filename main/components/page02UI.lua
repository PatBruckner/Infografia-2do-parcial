
local _Class   = {}
local layerUI  = require("components.kwik.layerUI")
local const    = require("vo.page02VO").const
local composer = require( "composer" )
local _K       = require("Application")
---------------------
---------------------
_Class.new = function(scene)
  local UI = layerUI.new()
    UI.scene     = scene
    UI.page      = "page02"
    UI.curPage   = 02
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
        self:_vars("swipe",  const.page_swipe_background, false)
    end
  --
  function UI:create()
   self:_create("common",  const.page_common, false)
    self:setVars()
    self:setLanguge()
        self:_create("image",  const.background_image_, false)
        self:_create("swipe",  const.page_swipe_background, false)
    end
  --
  function UI:didShow(params)
    self:_didShow("common",  const.page_common, false)
        self:_didShow("image",  const.background_image_, false)
        self:_didShow("swipe",  const.page_swipe_background, false)
    end
  --
  function UI:didHide(params)
    self:_didHide("common",  const.page_common, false)
        self:_didHide("image",  const.background_image_, false)
        self:_didHide("swipe",  const.page_swipe_background, false)
    end
  --
  function UI:destroy(params)
    self:_destroy("common",  const.page_common)
        self:_destroy("image",  const.background_image_, false)
        self:_destroy("swipe",  const.page_swipe_background, false)
    end
  --
  function UI:touch(event)
      print("event.name: "..event.name)
  end
  function UI:resume(params)
        self:_resume("image",  const.background_image_, false)
        self:_resume("swipe",  const.page_swipe_background, false)
    end
  --
  return  UI
end
--
return _Class