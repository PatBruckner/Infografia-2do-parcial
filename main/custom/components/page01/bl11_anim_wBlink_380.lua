-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.0 14
-- Project: Comic
--
local _M = {}
--
local _K = require "Application"
--
function _M:myMain()
end
--
function _M:localVars ()
end
--
function _M:localPos()
end
--
function _M:allListeners(UI)
  -- UI.scene:dispatchEvent({name="bl11_anim_wBlink_380", phase = "didShow", UI=UI})	}
  self:repoHeader(UI)
  self:buildAnim(UI)
		-- 			if _K.gt.wBlink_380 then
		-- 	_K.gt.wBlink_380:play()
		-- end
		end
--
function _M:toDispose()
	_K.cancelAllTweens()
	_K.cancelAllTransitions()
end
--
function _M:toDestory()
end
--
--
local function getPos(layer, _endX, _endY)
	local endX, endY =  _K.ultimatePosition(_endX, _endY)
	    mX = layer.x + endX + layer.width/2  - layer.x
    mY = layer.y + endY + layer.height/2 - layer.y
	return mX, mY
end
--
function _M:repoHeader(UI)
	local layer = UI.layer
	end
--
--
function _M:buildAnim(UI)
	local layer = UI.layer
	-- Wait request for '+gtName+'\r\n';
	if layer.bl11 == nil then return end
	layer.bl11.xScale = layer.bl11.oriXs
	layer.bl11.yScale = layer.bl11.oriYs
			local wBlink_380 = function(event)
			if _K.gt.wBlink_380 then
				_K.gt.wBlink_380:toBeginning()
			end
		end -- end of function
				local _restart = true
		local deltaX = 0
		local deltaY = 0
		local onEnd__590 = function()
				if _restart then
						layer.bl11.x				 = layer.bl11.oriX - deltaX
						layer.bl11.y				 = layer.bl11.oriY - deltaY
						layer.bl11.alpha		 = layer.bl11.oldAlpha
						layer.bl11.rotation	= 0
						layer.bl11.isVisible = true
						layer.bl11.xScale		= layer.bl11.oriXs
						layer.bl11.yScale		= layer.bl11.oriYs
												end
				end --ends reStart for wBlink_380
					local mX, mY = getPos(layer.bl11, 336, 24)
					deltaX = layer.bl11.oriX -mX
					deltaY = layer.bl11.oriY -mY
					mX, mY = display.contentCenterX - deltaX, display.contentCenterY - deltaY
								_K.gt.wBlink_380 = _K.gtween.new(
					layer.bl11,
					3,
										{
												 xScale = 0.01, yScale = 0.01,
						},
					{
						ease = _K.gtween.easing.Linear,
						repeatCount = 4,
						reflect = true,
						delay=0.1,
						onComplete=onEnd__590
						})
			_K.gt.wBlink_380:pause()
  		_K.gt.wBlink_380:toBeginning()
  		print("wBlink_380")
  		layer.bl11.anim["wBlink_380"] = _K.gt.wBlink_380
		--
	-- wBlink_380()
end
--
function _M:play(UI)
			-- _K.gt.wBlink_380:toBeginning()
			print("play wBlink_380")
		_K.gt.wBlink_380:play()
	end
--
function _M:resume(UI)
			_K.gt.wBlink_380:play()
	end
--
return _M