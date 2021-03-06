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
--
function _M:localVars ()
end
--
function _M:localPos()
end
--
function _M:allListeners(UI)
  -- UI.scene:dispatchEvent({name="bl11_anim_wRotation_bl11", phase = "didShow", UI=UI})	}
  self:repoHeader(UI)
  self:buildAnim(UI)
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
	local sceneGroup = UI.scene.view
	-- Wait request for '+gtName+'\r\n';
	if layer.bl11 == nil then return end
	layer.bl11.xScale = layer.bl11.oriXs
	layer.bl11.yScale = layer.bl11.oriYs
			local wRotation_bl11 = function(event)
			if _K.gt.wRotation_bl11 then
				_K.gt.wRotation_bl11:toBeginning()
			end
		end -- end of function
				local _restart = false
					local deltaX = 0
			local deltaY = 0
			local onEnd__379 = function()
				if _restart then
						layer.bl11.alpha		 = layer.bl11.oldAlpha
						layer.bl11.rotation	= 0
						layer.bl11.isVisible = true
						layer.bl11.xScale		= layer.bl11.oriXs
						layer.bl11.yScale		= layer.bl11.oriYs
												end
				end --ends reStart for wRotation_bl11
											local mX, mY = getPos(layer.bl11, 336, 24)
								deltaX = layer.bl11.oriX -mX
				deltaY = layer.bl11.oriY -mY
				mX, mY = display.contentCenterX - deltaX, display.contentCenterY - deltaY
								_K.gt.wRotation_bl11 = _K.gtween.new(
					layer.bl11,
					1,
										{
													rotation = 360,
						},
					{
						ease = _K.gtween.easing.Linear,
						repeatCount = 1,
						reflect = false,
						delay=0.1,
						onComplete=onEnd__379
						})
							_K.gt.wRotation_bl11:pause()
				-- _K.gt.wRotation_bl11:toBeginning()
	  		  		layer.bl11.anim["wRotation_bl11"] = _K.gt.wRotation_bl11
  		--
	-- wRotation_bl11()
end
--
function _M:play(UI)
			-- _K.gt.wRotation_bl11:toBeginning()
		_K.gt.wRotation_bl11:play()
	end
--
function _M:resume(UI)
			_K.gt.wRotation_bl11:play()
	end
--
return _M