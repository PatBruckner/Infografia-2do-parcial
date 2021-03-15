-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.8
-- Project: Comic
--
local _M = require("components.kwik.tabButFunction").new(scene)
--
local widget = require("widget")
local _K = require "Application"
--
-- scene, layer and sceneGroup should be INPUT
-- tab should be INPUT
-- tabja["witch"] = {"p2_witch_ja.png", 180, 262, 550, 581, 1}
--
-- UI.tSearch = tabja
--
local imageWidth             = 97/4
local imageHeight            = 60/4
local mX, mY                 = _K.ultimatePosition(676, 1630)
local oriAlpha = 1
--
local imagePath = "p1/tap.png"
function _M:localVars (UI)
   self:buttonVars(UI)
end
--
function _M:localPos(UI)
  self:buttonLocal(UI)
end
--
function _M:allListeners(UI)
  local sceneGroup = UI.scene.view
  local layer      = UI.layer
  local self       = UI.scene
  --
      if layer.Tap == nil then return end
    _M:createTabButFunction(UI, {obj=layer.Tap, btaps=1, eventName="Tap_button_but_Tap"})
  end
--
function _M:toDispose(UI)
  local layer      = UI.layer
  local sceneGroup = UI.scene.view
      if layer.Tap == nil then return end
    _M:removeTabButFunction(UI, {obj=layer.Tap, eventName="Tap_button_but_Tap"})
  end
--
function _M:toDestroy(UI)
end
--
function _M:buttonVars(UI)
  local sceneGroup = UI.scene.view
  local layer      = UI.layer
  end
--
function _M:buttonLocal(UI)
  local sceneGroup = UI.scene.view
  local layer      = UI.layer
            layer.Tap = display.newImageRect( _K.imgDir.. imagePath, _K.systemDir, imageWidth, imageHeight )
    if layer.Tap == nil then return end
      layer.Tap.x        = mX
      layer.Tap.y        = mY
      layer.Tap.alpha    = oriAlpha
      layer.Tap.oldAlpha = oriAlpha
      layer.Tap.oriX  = layer.Tap.x
      layer.Tap.oriY  = layer.Tap.y
      layer.Tap.oriXs = layer.Tap.xScale
      layer.Tap.oriYs = layer.Tap.yScale
      layer.Tap.name  = "Tap"
      sceneGroup.Tap  = layer.Tap
      sceneGroup:insert(layer.Tap)
    end
--
return _M