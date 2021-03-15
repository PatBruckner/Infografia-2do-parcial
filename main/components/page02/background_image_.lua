-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.8
-- Project: Comic
--
local _M = {}
--
local _K = require "Application"
--
function _M:myMain()
end
-- not
local imageWidth             = 1424/4
local imageHeight            = 1920/4
local mX, mY                 = _K.ultimatePosition(632, 960)
local oriAlpha = 1
--
local imagePath = "p2/background.jpg"
--
function _M:localVars(UI)
    end
--
--[[
local info     = require ("assets.sprites.".."page2")
local sheet    = graphics.newImageSheet ( _K.spriteDir.."page2.png", _K.systemDir, info:getSheet() )
local sequence = {start=1, count= #info:getSheet().frames }
function newImageRect(name, width, height)
  local image
  if string.find(name, "background") == nil then
      image = display.newSprite(sheet, sequence)
      image.name = name
      image:setFrame (info:getFrameIndex (name))
      image.width, image.height = width, height
      else
       image = display.newImageRect(_K.imgDir..name.."."..jpg, _K.systemDir, width, height)
      end
   return image
end
--]]
--
function _M:localPos(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
    local function myNewImage()
    layer.background = display.newImageRect( _K.imgDir..imagePath, _K.systemDir, imageWidth, imageHeight)
    -- layer.background = newImageRect(background, imageWidth, imageHeight )
    if layer.background == nil then return end
    layer.background.imagePath = imagePath
    layer.background.x = mX
    layer.background.y = mY
    layer.background.alpha = oriAlpha
    layer.background.oldAlpha = oriAlpha
    layer.background.blendMode = ""
    layer.background.oriX = layer.background.x
    layer.background.oriY = layer.background.y
    layer.background.oriXs = layer.background.xScale
    layer.background.oriYs = layer.background.yScale
    layer.background.name = "background"
    sceneGroup.background = layer.background
          sceneGroup:insert( layer.background)
    --
    end
    myNewImage()
end
--
function _M:allListeners(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
      end
--
function _M:toDispose(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
      end
--
function  _M:toDestory()
end
--
return _M