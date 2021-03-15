-- Code created by Kwik - Copyright: kwiksher.com 2016
-- Version: 4.0.8
-- Project: Comic,
--
local ActionCommand = {}
local _K            = require "Application"
--
function ActionCommand:new()
	local command = {}
	--
	function command:execute(params)
		local UI         = params.UI
		local sceneGroup = UI.scene.view
		local layer      = UI.layer
		local phase     = params.event.phase
		local event     = params.event
							-- tap
local panels = require("components."..UI.page..".page_meta_panels")
panels:tap()
-- panels:start(4, true) -- pause = true
return true
			end
		return command
end
--
return ActionCommand