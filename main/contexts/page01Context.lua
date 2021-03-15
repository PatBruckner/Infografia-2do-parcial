
local _Class = {}
--
function _Class:new(super)
	local context = super
	--
	function context:init()
------------------------------------------------------------
------------------------------------------------------------
				self:mapMediator("views.page01Scene", "mediators.page01Mediator")
		--
        _K = require("Application")
				self:mapCommand("page01.ext_but_Auto_code_041", _K.appDir.."commands.page01.ext_but_Auto_code_041")
				self:mapCommand("page01.Auto_button_but_Auto", _K.appDir.."commands.page01.Auto_button_but_Auto")
				self:mapCommand("page01.ext_but_Tap_code_381", _K.appDir.."commands.page01.ext_but_Tap_code_381")
				self:mapCommand("page01.Tap_button_but_Tap", _K.appDir.."commands.page01.Tap_button_but_Tap")
				self:mapCommand("page01.ext_but_Whole_code_240", _K.appDir.."commands.page01.ext_but_Whole_code_240")
				self:mapCommand("page01.Whole_Image_button_but_Whole", _K.appDir.."commands.page01.Whole_Image_button_but_Whole")
				self:mapCommand("page01.bl11_anim_wRotation_bl11", _K.appDir.."commands.page01.bl11_anim_wRotation_bl11")
				self:mapCommand("page01.pn1_anim_wPulse_pn1", _K.appDir.."commands.page01.pn1_anim_wPulse_pn1")
		--
	end
  --
  function context:addInitializer(t)
  	local t = require(t)
  	for k,v in pairs(t) do self.Router[k] = v end
  end
  --
	return context
end
--
return _Class