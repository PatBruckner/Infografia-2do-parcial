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
local imageWidth             = 127/4
local imageHeight            = 47/4
local mX, mY                 = _K.ultimatePosition(1053, 1623)
local oriAlpha = 1
--
local imagePath = "p1/auto.png"
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
      if layer.Auto == nil then return end
    _M:createTabButFunction(UI, {obj=layer.Auto, btaps=1, eventName="Auto_button_but_Auto"})
  end
--
function _M:toDispose(UI)
  local layer      = UI.layer
  local sceneGroup = UI.scene.view
      if layer.Auto == nil then return end
    _M:removeTabButFunction(UI, {obj=layer.Auto, eventName="Auto_button_but_Auto"})
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
            layer.Auto = display.newImageRect( _K.imgDir.. imagePath, _K.systemDir, imageWidth, imageHeight )
    if layer.Auto == nil then return end
      layer.Auto.x        = mX
      layer.Auto.y        = mY
      layer.Auto.alpha    = oriAlpha
      layer.Auto.oldAlpha = oriAlpha
      layer.Auto.oriX  = layer.Auto.x
      layer.Auto.oriY  = layer.Auto.y
      layer.Auto.oriXs = layer.Auto.xScale
      layer.Auto.oriYs = layer.Auto.yScale
      layer.Auto.name  = "Auto"
      sceneGroup.Auto  = layer.Auto
      sceneGroup:insert(layer.Auto)
    end
--
return _M