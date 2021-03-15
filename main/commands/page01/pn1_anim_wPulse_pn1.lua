-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.8
-- Project: Comic
--
local AnimationCommand = {}
local _K = require("Application")
local anim = require("components.page01.pn1_anim_wPulse_pn1")
-----------------------------
-----------------------------
function AnimationCommand:new()
	local command = {}
	--
	function command:execute(params)
		local UI    = params.event.UI
		local phase = params.event.phase
		if phase == "didShow" then
			anim:repoHeader(UI)
			anim:buildAnim(UI)
		elseif phase=="dispose" then
			anim:toDispose()
		elseif phase=="play" then
			anim:play()
		end
	end
	return command
end
--
return AnimationCommand