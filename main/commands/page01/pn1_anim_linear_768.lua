-- Code created by Kwik - Copyright: kwiksher.com 2016-- Version: 4.0.0 14-- Project: Comic, published on Thursday, December 22 2016 16:06:07--local AnimationCommand = {}local anim = require("components.page01.pn1_anim_linear_768")----------------------------------------------------------function AnimationCommand:new()	local command = {}	--	function command:execute(params)		local UI    = params.event.UI		local phase = params.event.phase		if phase == "didShow" then			anim:repoHeader(UI)			anim:buildAnim(UI)		elseif phase=="dispose" then			anim:dispose()		elseif phase=="play" then			anim:play()		end	end	return commandend--return AnimationCommand