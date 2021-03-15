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
local imageWidth             = 353/4
local imageHeight            = 63/4
local mX, mY                 = _K.ultimatePosition(225, 1628)
local oriAlpha = 1
--
local imagePath = "p1/whole_image.png"
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
      if layer.Whole_Image == nil then return end
    _M:createTabButFunction(UI, {obj=layer.Whole_Image, btaps=1, eventName="Whole_Image_button_but_Whole"})
  end
--
function _M:toDispose(UI)
  local layer      = UI.layer
  local sceneGroup = UI.scene.view
      if layer.Whole_Image == nil then return end
    _M:removeTabButFunction(UI, {obj=layer.Whole_Image, eventName="Whole_Image_button_but_Whole"})
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
            layer.Whole_Image = display.newImageRect( _K.imgDir.. imagePath, _K.systemDir, imageWidth, imageHeight )
    if layer.Whole_Image == nil then return end
      layer.Whole_Image.x        = mX
      layer.Whole_Image.y        = mY
      layer.Whole_Image.alpha    = oriAlpha
      layer.Whole_Image.oldAlpha = oriAlpha
      layer.Whole_Image.oriX  = layer.Whole_Image.x
      layer.Whole_Image.oriY  = layer.Whole_Image.y
      layer.Whole_Image.oriXs = layer.Whole_Image.xScale
      layer.Whole_Image.oriYs = layer.Whole_Image.yScale
      layer.Whole_Image.name  = "Whole_Image"
      sceneGroup.Whole_Image  = layer.Whole_Image
      sceneGroup:insert(layer.Whole_Image)
    end
--
return _M