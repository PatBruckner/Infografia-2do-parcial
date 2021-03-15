
local PageViewMediator = {}
--
function PageViewMediator:new()
  local mediator = {}
  --
  function mediator:onRegister()
    local view = self.viewInstance
    -- Scene
    view:addEventListener("hide", self)
    end
  --
  function mediator:onRemove()
    local view = self.viewInstance
    end
  --
  function mediator:hide(event)
    Runtime:dispatchEvent({name=".hide", event=event, UI = self.viewInstance.pageUI})
  end
  --
  return mediator
end
--
return PageViewMediator