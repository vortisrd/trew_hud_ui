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

  job = "Duck Mastrer",

  money = "0",
  bankMoney = "0",
  blackMoney = "0"
}

TriggerEvent('chatMessage', "", {255, 0, 0}, hunger)

RegisterServerEvent('trew_hud_ui:getServerInfo')
AddEventHandler('trew_hud_ui:getServerInfo', function()

	TriggerClientEvent('trew_hud_ui:setInfo', source, info)
end)

RegisterServerEvent('trew_hud_ui:syncCarLights')
AddEventHandler('trew_hud_ui:syncCarLights', function(status)
	TriggerClientEvent('trew_hud_ui:syncCarLights', -1, source, status)
end)

trewhudui.event = {}

function trewhudui.event:playerSpawn(user, first_spawn)
  if first_spawn then
    info.hunger = (1 - user:getVital("food")) * 100
    info.thirst = (1 - user:getVital("water")) * 100
    info.job = user:getGroupByType('job')
    info.money = user:getWallet()
    info.bankMoney = user:getBank()
  end
end

function trewhudui.event:playerMoneyUpdate(user)
    info.money = user:getWallet()
    info.bankMoney = user:getBank()
end

function trewhudui.event:playerVitalChange(user)
  info.hunger = (1 - user:getVital("food")) * 100
  info.thirst = (1 - user:getVital("water")) * 100
end

function trewhudui.event:playerJoinGroup(user, name, gtype)
  info.job = user:getGroupByType('job')
end

function trewhudui.event:playerLeaveGroup(user, name, gtype)
  info.job = user:getGroupByType('job')
end

vRP:registerExtension(trewhudui)