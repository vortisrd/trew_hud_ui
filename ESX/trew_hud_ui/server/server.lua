ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('es:addCommand', 'toggleui', function()
end, { help = _U('toggleui') })


RegisterServerEvent('trew_hud_ui:syncCarLights')
AddEventHandler('trew_hud_ui:syncCarLights', function(status)
	TriggerClientEvent('trew_hud_ui:syncCarLights', -1, source, status)
end)
