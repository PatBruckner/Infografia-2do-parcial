local Frame = {}

function Frame:initialize()
	local view = display.newGroup()
	self.view = view

	-- Center view in content
	local contentW = display.contentWidth
	local contentH = display.contentHeight

	local halfContentW = 0.5*contentW
	local halfContentH = 0.5*contentH
	view.x = halfContentW
	view.y = halfContentH

--[[
	-- offscreen (extra frame to mask off content during rotation)
	local maxOff = ( contentH > contentW ) and contentH or contentW
	local minOff = 0.25*maxOff
	local minOffHalf = 0.5*minOff
	local topOff = display.newRect( -(halfContentW + minOff + minOffHalf), -halfContentH - minOffHalf, maxOff + 2*minOff, minOff )
	topOff:setFillColor( 0, 0, 0 )
	view:insert( topOff )

	local botOff = display.newRect( -(halfContentW + minOff + minOffHalf), halfContentH - minOffHalf, maxOff + 2*minOff, minOff )
	botOff:setFillColor( 0, 0, 0 )
	view:insert( botOff )

	local leftOff = display.newRect( -(halfContentW + minOff + minOffHalf), -halfContentH, minOff, contentH )
	leftOff:setFillColor( 0, 0, 0 )
	view:insert( leftOff )

	local rightOff = display.newRect( (halfContentW+ minOffHalf), -halfContentH, minOff, contentH )
	rightOff:setFillColor( 0, 0, 0 )
	view:insert( rightOff )
--]]

	-- max dimension
	local unit = ( contentH > contentW ) and contentH or contentW
	self.unit = unit

	-- length needs to be long enough to cover diagonal of screen
	-- and also be an even integer
	local len = 2 * unit
	self.len = len

	-- Insert rects and position relative to view's origin
	local top = display.newRect( -halfContentW, -halfContentH, len, 0 )
	view:insert( top )
	local bottom = display.newRect( -halfContentW, halfContentH, len, 0 )
	view:insert( bottom )
	local left = display.newRect( -halfContentW, -halfContentH, 0, contentH )
	view:insert( left )
	local right = display.newRect( halfContentW, -halfContentH, 0, contentH )
	view:insert( right )

	view.top = top
	view.bottom = bottom
	view.left = left
	view.right = right
end

local function floor( a )
	return a - a%1
end

function Frame:setBounds( w, h, animate )
	local view = self.view

	local contentW = display.contentWidth
	local contentH = display.contentHeight

	local orientation = system.orientation
	if "landscapeLeft" == orientation or "landscapeRight" == orientation then
		contentW,contentH = contentH,contentW
	end

	-- Force h to be even
	if math.mod( h, 2 )~= 0 then
		h = h + 1
	end

	-- view group is at the center of the content bounds
	local len = self.len
	local wNew = 0.5*(len - w)
	local hNew = 0.5*(len - h)
--	local wNew = 0.5*(contentW - w)
--	local hNew = 0.5*(contentH - h)

	local xNew = 0.5*(w + wNew)
	local yNew = 0.5*(h + hNew)

	if animate then
		transition.to( view.top, { height=hNew, y=-yNew, time=kTime, transition=easing.inOutQuad } )
		transition.to( view.bottom, { height=hNew, y=yNew, time=kTime, transition=easing.inOutQuad } )
--		transition.to( view.top, { width=contentW, height=hNew, x=0, y=-yNew } )
--		transition.to( view.bottom, { width=contentW, height=hNew, x=0, y=yNew } )
	else
		local top = view.top
--		top.width = contentW
		top.height = hNew
		top.x = 0
		top.y = -yNew

		local bottom = view.bottom
--		bottom.width = contentW
		bottom.height = hNew
		bottom.x = 0
		bottom.y = yNew
	end

	if animate then
		transition.to( view.left, { width=wNew, height=h, x=-xNew, y=0, time=kTime, transition=easing.inOutQuad } )
		transition.to( view.right, { width=wNew, height=h, x=xNew, y=0, time=kTime, transition=easing.inOutQuad } )
	else
		local left = view.left
		left.width = wNew
		left.height = h
		left.x = -xNew
		left.y = 0

		local right = view.right
		right.width = wNew
		right.height = h
		right.x = xNew
		right.y = 0
	end
end

function Frame:setColor( r, g, b , a )
	local view = self.view
	view.top:setFillColor(r, g, b , a  )
	view.bottom:setFillColor(r, g, b , a)
	view.left:setFillColor(r, g, b , a )
	view.right:setFillColor( r, g, b , a )
end

return Frame