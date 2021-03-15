-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.8
-- Project: Comic
--
local _M = {}
--
local _K = require "Application"
local layerSet_ballons = {
      {
      myLName = "bl11",
      x       = 479,
      y       = 137,
      width   = 286,
      height  = 226,
      frameSet = {
      }
    },
      {
      myLName = "12",
      x       = 1245,
      y       = 296,
      width   = 258,
      height  = 157,
      frameSet = {
      }
    },
      {
      myLName = "21-31",
      x       = 187,
      y       = 756,
      width   = 398,
      height  = 262,
      frameSet = {
      }
    },
      {
      myLName = "21-31",
      x       = 247,
      y       = 1133,
      width   = 204,
      height  = 120,
      frameSet = {
      }
    },
      {
      myLName = "4",
      x       = 1078,
      y       = 782,
      width   = 421,
      height  = 307,
      frameSet = {
      }
    },
      {
      myLName = "5",
      x       = 200,
      y       = 1584,
      width   = 420,
      height  = 640,
      frameSet = {
      }
    },
      {
      myLName = "6",
      x       = 761,
      y       = 1598,
      width   = 183,
      height  = 179,
      frameSet = {
      }
    },
      {
      myLName = "7",
      x       = 1104,
      y       = 1393,
      width   = 487,
      height  = 283,
      frameSet = {
      }
    },
  }
--
function _M:myMain()
end
-- not
local imageWidth             = 1386/4
local imageHeight            = 1880/4
local mX, mY                 = _K.ultimatePosition(681, 964)
local oriAlpha = 1
--
local imagePath = "p1/ballons.png"
--
function _M:localVars(UI)
    end
--
--[[
local info     = require ("assets.sprites.".."page1")
local sheet    = graphics.newImageSheet ( _K.spriteDir.."page1.png", _K.systemDir, info:getSheet() )
local sequence = {start=1, count= #info:getSheet().frames }
function newImageRect(name, width, height)
  local image
  if string.find(name, "background") == nil then
      image = display.newSprite(sheet, sequence)
      image.name = name
      image:setFrame (info:getFrameIndex (name))
      image.width, image.height = width, height
      else
       image = display.newImageRect(_K.imgDir..name.."."..png, _K.systemDir, width, height)
      end
   return image
end
--]]
--
function _M:localPos(UI)
  local sceneGroup  = UI.scene.view
  local layer       = UI.layer
    local function myNewImage()
    layer.ballons = display.newImageRect( _K.imgDir..imagePath, _K.systemDir, imageWidth, imageHeight)
    -- layer.ballons = newImageRect(ballons, imageWidth, imageHeight )
    if layer.ballons == nil then return end
    layer.ballons.imagePath = imagePath
    layer.ballons.x = mX
    layer.ballons.y = mY
    layer.ballons.alpha = oriAlpha
    layer.ballons.oldAlpha = oriAlpha
    layer.ballons.blendMode = ""
    layer.ballons.oriX = layer.ballons.x
    layer.ballons.oriY = layer.ballons.y
    layer.ballons.oriXs = layer.ballons.xScale
    layer.ballons.oriYs = layer.ballons.yScale
    layer.ballons.name = "ballons"
    sceneGroup.ballons = layer.ballons
          sceneGroup:insert( layer.ballons)
    --
    end
      local options = {
   frames ={},
    sheetContentWidth = imageWidth,
    sheetContentHeight = imageHeight
  }
  local widthDiff = options.sheetContentWidth - 681/2
  local heightDiff = options.sheetContentHeight - 964/2
  --
  for i=1, #layerSet_ballons do
    local target = layerSet_ballons[i]
    local _x = (target.x - target.width/2)/4 + widthDiff/2
    local _y = (target.y - target.height/2)/4 + heightDiff/2
    -- print(_x, _y)
    options.frames[i] = {
      x = _x,
      y = _y,
      width = target.width/4,
      height = target.height/4
    }
    -- print(target.width/4, target.height/4)
  end
  layer.ballons = display.newGroup()
  local sheet = graphics.newImageSheet(_K.imgDir..imagePath, _K.systemDir, options )
  for i=1, #layerSet_ballons do
    local target = layerSet_ballons[i]
    local frame = options.frames[i]
    local frame1 = display.newImageRect( sheet, i, frame.width, frame.height )
    frame1.x, frame1.y = _K.ultimatePosition(target.x, target.y)
    frame1.name = target.myLName
    frame1.oriX              = frame1.x
    frame1.oriY              = frame1.y
    frame1.oriXs             = 1
    frame1.oriYs             = 1
    frame1.oldAlpha          = 1
    frame1.anim              = {}
    target.panel = frame1
    UI.layer[target.myLName] = frame1
    layer.ballons:insert(frame1)
  end
  --
  layer.ballons.imagePath = imagePath
  -- layer.ballons.x = mX
  -- layer.ballons.y = mY
  layer.ballons.alpha = oriAlpha
  layer.ballons.oldAlpha = oriAlpha
  layer.ballons.blendMode = ""
  layer.ballons.oriX = layer.ballons.x
  layer.ballons.oriY = layer.ballons.y
  layer.ballons.oriXs = layer.ballons.xScale
  layer.ballons.oriYs = layer.ballons.yScale
  layer.ballons.name = "ballons"
  sceneGroup.ballons = layer.ballons
  sceneGroup:insert( layer.ballons)
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