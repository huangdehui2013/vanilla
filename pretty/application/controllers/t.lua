local tservice = require 'application.models.service.user'
local TController = {}

function TController:c()
	local view = self:getView()
	local req = self:getRequest()
	local p = {}
	p['message'] = 'K'
	p['kk'] = tservice:get()
	-- view:assign(p)
	return view:render('t/aa.html', p)
	-- return view:display()
end

function TController:index()
	 -- error({ code = 100})
	local view = self:getView()
	-- view:render('index/index.html', {message = '============'})
	-- pp(view:caching(true))
	-- local resp = self:getResponse()
	-- resp:clearHeaders()
	-- resp:setHeader('Content_type', 'application/json')
	-- local r = require('vanilla.v.registry'):new('zj')
	-- r:dump('zj')
	-- local rs = '-'
	-- r:del('zhou')
	-- rs = r:get('zhou')
	-- r:ggg()
	-- pp(r)
	-- pp(self:getRequest().ngx)
	-- local p = {}
	-- -- p['message'] = '====ccc======' .. rs
	-- -- p['kk'] = '=====kk=====' .. pps(r)
	-- p['message'] = '====ccc======'
	-- p['kk'] = '=====kk====='
	view:assign('message', '-----TTTT------')
	view:assign('kk', '------Index-----')
	-- return view:assign(p)
	return view:display()
	-- return 200, { message = "-------!" .. self.params.p }
end

function TController:aa()
	local view = self:getView()
	-- view:render('index/index.html', {message = '============'})
	-- pp(view:caching(true))
	local resp = self:getResponse()
	-- resp:setHeader('Content_type', 'application/json')
	-- pp(self.params)
	-- pp(self.request)
	view:assign('message', '-----TTTT------')
	view:assign('kk', '------Aa-----' .. self.params['c'])
	-- view:assign()
	view:display()
	-- return 200, { message = "-------!" .. self.params.p }
end

return TController