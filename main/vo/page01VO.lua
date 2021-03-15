
local VO = {}
VO.field = "page01" --
---------------------
---------------------
local Const = require("extlib.const")
VO.const = Const:new{
	"page_common",
    		"background_image_",
			"ballons_image_",
			"page_meta_panels",
			"Whole_Image_button_but_Whole",
			"Tap_button_but_Tap",
			"Auto_button_but_Auto",
			"page_swipe_background",
			"bl11_anim_wRotation_bl11",
			"pn1_anim_wPulse_pn1",
	}
---------------------
---------------------
VO.new = function(val)
	local vo = {
	page_common = val.page_common,
	    			background_image_ = val.background_image_,
					ballons_image_ = val.ballons_image_,
					page_meta_panels = val.page_meta_panels,
					Whole_Image_button_but_Whole = val.Whole_Image_button_but_Whole,
					Tap_button_but_Tap = val.Tap_button_but_Tap,
					Auto_button_but_Auto = val.Auto_button_but_Auto,
					page_swipe_background = val.page_swipe_background,
					bl11_anim_wRotation_bl11 = val.bl11_anim_wRotation_bl11,
					pn1_anim_wPulse_pn1 = val.pn1_anim_wPulse_pn1,
		}
	--
	function vo:copyFrom(copyVO)
	end
	--
	function vo:valueOf()
		return baseDir.."/"..self.filename
	end
	--
	return vo
end
--
VO.equal = function(vo1, vo2)
	return vo1.valueOf() == vo2.valueOf()
end
--
return VO