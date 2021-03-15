
local VO = {}
VO.field = "page02" --
---------------------
---------------------
local Const = require("extlib.const")
VO.const = Const:new{
	"page_common",
    		"background_image_",
			"page_swipe_background",
	}
---------------------
---------------------
VO.new = function(val)
	local vo = {
	page_common = val.page_common,
	    			background_image_ = val.background_image_,
					page_swipe_background = val.page_swipe_background,
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