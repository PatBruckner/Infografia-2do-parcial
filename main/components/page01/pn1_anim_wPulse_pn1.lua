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
  -- UI.scene:dispatchEvent({name="pn1_anim_wPulse_pn1", phase = "didShow", UI=UI})	}
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
	if layer.pn1 == nil then return end
	layer.pn1.xScale = layer.pn1.oriXs
	layer.pn1.yScale = layer.pn1.oriYs
			local wPulse_pn1 = function(event)
			if _K.gt.wPulse_pn1 then
				_K.gt.wPulse_pn1:toBeginning()
			end
		end -- end of function
				local _restart = true
					local deltaX = 0
			local deltaY = 0
			local onEnd__437 = function()
				if _restart then
						layer.pn1.alpha		 = layer.pn1.oldAlpha
						layer.pn1.rotation	= 0
						layer.pn1.isVisible = true
						layer.pn1.xScale		= layer.pn1.oriXs
						layer.pn1.yScale		= layer.pn1.oriYs
												end
				end --ends reStart for wPulse_pn1
											local mX, mY = getPos(layer.pn1, -44, 54)
								deltaX = layer.pn1.oriX -mX
				deltaY = layer.pn1.oriY -mY
				mX, mY = display.contentCenterX - deltaX, display.contentCenterY - deltaY
								_K.gt.wPulse_pn1 = _K.gtween.new(
					layer.pn1,
					1,
										{
												  xScale =2.5, yScale =2.5,
						},
					{
						ease = _K.gtween.easing.Linear,
						repeatCount = 2,
						reflect = false,
						delay=0.1,
						onComplete=onEnd__437
						})
							_K.gt.wPulse_pn1:pause()
				-- _K.gt.wPulse_pn1:toBeginning()
	  		  		layer.pn1.anim["wPulse_pn1"] = _K.gt.wPulse_pn1
  		--
	-- wPulse_pn1()
end
--
function _M:play(UI)
			-- _K.gt.wPulse_pn1:toBeginning()
		_K.gt.wPulse_pn1:play()
	end
--
function _M:resume(UI)
			_K.gt.wPulse_pn1:play()
	end
--
return _M