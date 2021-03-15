
local PageViewMediator = {}
--
function PageViewMediator:new()
  local mediator = {}
  --
  function mediator:onRegister()
    local view = self.viewInstance
    -- Scene
    view:addEventListener("hide", self)
        view:addEventListener("ext_but_Auto_code_041", self)
        view:addEventListener("Auto_button_but_Auto", self)
        view:addEventListener("ext_but_Tap_code_381", self)
        view:addEventListener("Tap_button_but_Tap", self)
        view:addEventListener("ext_but_Whole_code_240", self)
        view:addEventListener("Whole_Image_button_but_Whole", self)
        view:addEventListener("bl11_anim_wRotation_bl11", self)
        view:addEventListener("pn1_anim_wPulse_pn1", self)
    end
  --
  function mediator:onRemove()
    local view = self.viewInstance
        view:removeEventListener("ext_but_Auto_code_041", self)
        view:removeEventListener("Auto_button_but_Auto", self)
        view:removeEventListener("ext_but_Tap_code_381", self)
        view:removeEventListener("Tap_button_but_Tap", self)
        view:removeEventListener("ext_but_Whole_code_240", self)
        view:removeEventListener("Whole_Image_button_but_Whole", self)
        view:removeEventListener("bl11_anim_wRotation_bl11", self)
        view:removeEventListener("pn1_anim_wPulse_pn1", self)
    end
  --
  function mediator:hide(event)
    Runtime:dispatchEvent({name=".hide", event=event, UI = self.viewInstance.pageUI})
  end
    function mediator:ext_but_Auto_code_041(event)
    Runtime:dispatchEvent({name="page01.ext_but_Auto_code_041", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
    function mediator:Auto_button_but_Auto(event)
    Runtime:dispatchEvent({name="page01.Auto_button_but_Auto", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
    function mediator:ext_but_Tap_code_381(event)
    Runtime:dispatchEvent({name="page01.ext_but_Tap_code_381", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
    function mediator:Tap_button_but_Tap(event)
    Runtime:dispatchEvent({name="page01.Tap_button_but_Tap", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
    function mediator:ext_but_Whole_code_240(event)
    Runtime:dispatchEvent({name="page01.ext_but_Whole_code_240", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
    function mediator:Whole_Image_button_but_Whole(event)
    Runtime:dispatchEvent({name="page01.Whole_Image_button_but_Whole", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
    function mediator:bl11_anim_wRotation_bl11(event)
    Runtime:dispatchEvent({name="page01.bl11_anim_wRotation_bl11", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
    function mediator:pn1_anim_wPulse_pn1(event)
    Runtime:dispatchEvent({name="page01.pn1_anim_wPulse_pn1", event=event.parent or event, UI = self.viewInstance.pageUI})
  end
  --
  return mediator
end
--
return PageViewMediator