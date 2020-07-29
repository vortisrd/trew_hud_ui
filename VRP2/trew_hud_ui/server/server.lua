local trewhudui = class("trewhudui", vRP.Extension)
trewhudui.User = class("User")

function trewhudui:__construct()
    vRP.Extension.__construct(self)
end

local Config = module('trew_hud_ui', 'config')
local Locales = module('trew_hud_ui', 'locales/languages')

function _U(entry)
	return Locales[ Config.Locale ][entry]
end

local info = {
  hunger = "0",
  thirst = "0",

  job = "Unemployed",

  money = "0",
  bankMoney = "0",
  blackMoney = "0"
}

TriggerEvent('chatMessage', "", {255, 0, 0}, hunger)

RegisterServerEvent('trew_hud_ui:getServerInfo')
AddEventHandler('trew_hud_ui:getServerInfo', function()
  local user = vRP.users_by_source[source]
  if user ~= nil then
    info.hunger = (1 - user:getVital("food")) * 100
    info.thirst = (1 - user:getVital("water")) * 100
    info.job = user:getGroupByType('job')
    info.money = user:getWallet()
    info.bankMoney = user:getBank()
    TriggerClientEvent('trew_hud_ui:setInfo', source, info)
  end
end)

RegisterServerEvent('trew_hud_ui:syncCarLights')
AddEventHandler('trew_hud_ui:syncCarLights', function(status)
	TriggerClientEvent('trew_hud_ui:syncCarLights', -1, source, status)
end)

vRP:registerExtension(trewhudui)
