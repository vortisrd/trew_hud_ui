
--
-- DO NOT TOUCH THE PART DOWN BELOW!
-- Can potentially break the HUD.
--

AddEventHandler('onClientMapStart', function()
	SendNUIMessage({ action = 'ui', config = Config.ui })
	SendNUIMessage({ action = 'setFont', url = Config.font.url, name = Config.font.name })
	SendNUIMessage({ action = 'setLogo', value = Config.serverLogo })
end)