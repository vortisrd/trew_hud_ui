local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
local Config = module('trew_hud_ui', 'config')
local Locales = module('trew_hud_ui', 'locales/languages')

function _U(entry)
	return Locales[ Config.Locale ][entry] 
end

RegisterServerEvent('trew_hud_ui:getServerInfo')
AddEventHandler('trew_hud_ui:getServerInfo', function()

	local source = source
	local playerID = vRP.getUserId(source)

	local info = {
		hunger = vRP.getHunger(playerID),
		thirst = vRP.getThirst(playerID),

		job = vRP.getUserGroupByType(playerID, 'job'),

		money = vRP.getMoney(playerID),
		bankMoney = vRP.getBankMoney(playerID),
		blackMoney = vRP.getInventoryItemAmount(playerID, Config.vRP.items.blackMoney)
	}
	
	TriggerClientEvent('trew_hud_ui:setInfo', source, info)
end)

RegisterServerEvent('trew_hud_ui:syncCarLights')
AddEventHandler('trew_hud_ui:syncCarLights', function(status)
	TriggerClientEvent('trew_hud_ui:syncCarLights', -1, source, status)
end)