local zones = { ['AIRP'] = "Los Santos International Airport", ['ALAMO'] = "Alamo Sea", ['ALTA'] = "Alta", ['ARMYB'] = "Fort Zancudo", ['BANHAMC'] = "Banham Canyon Dr", ['BANNING'] = "Banning", ['BEACH'] = "Vespucci Beach", ['BHAMCA'] = "Banham Canyon", ['BRADP'] = "Braddock Pass", ['BRADT'] = "Braddock Tunnel", ['BURTON'] = "Burton", ['CALAFB'] = "Calafia Bridge", ['CANNY'] = "Raton Canyon", ['CCREAK'] = "Cassidy Creek", ['CHAMH'] = "Chamberlain Hills", ['CHIL'] = "Vinewood Hills", ['CHU'] = "Chumash", ['CMSW'] = "Chiliad Mountain State Wilderness", ['CYPRE'] = "Cypress Flats", ['DAVIS'] = "Davis", ['DELBE'] = "Del Perro Beach", ['DELPE'] = "Del Perro", ['DELSOL'] = "La Puerta", ['DESRT'] = "Grand Senora Desert", ['DOWNT'] = "Downtown", ['DTVINE'] = "Downtown Vinewood", ['EAST_V'] = "East Vinewood", ['EBURO'] = "El Burro Heights", ['ELGORL'] = "El Gordo Lighthouse", ['ELYSIAN'] = "Elysian Island", ['GALFISH'] = "Galilee", ['GOLF'] = "GWC and Golfing Society", ['GRAPES'] = "Grapeseed", ['GREATC'] = "Great Chaparral", ['HARMO'] = "Harmony", ['HAWICK'] = "Hawick", ['HORS'] = "Vinewood Racetrack", ['HUMLAB'] = "Humane Labs and Research", ['JAIL'] = "Bolingbroke Penitentiary", ['KOREAT'] = "Little Seoul", ['LACT'] = "Land Act Reservoir", ['LAGO'] = "Lago Zancudo", ['LDAM'] = "Land Act Dam", ['LEGSQU'] = "Legion Square", ['LMESA'] = "La Mesa", ['LOSPUER'] = "La Puerta", ['MIRR'] = "Mirror Park", ['MORN'] = "Morningwood", ['MOVIE'] = "Richards Majestic", ['MTCHIL'] = "Mount Chiliad", ['MTGORDO'] = "Mount Gordo", ['MTJOSE'] = "Mount Josiah", ['MURRI'] = "Murrieta Heights", ['NCHU'] = "North Chumash", ['NOOSE'] = "N.O.O.S.E", ['OCEANA'] = "Pacific Ocean", ['PALCOV'] = "Paleto Cove", ['PALETO'] = "Paleto Bay", ['PALFOR'] = "Paleto Forest", ['PALHIGH'] = "Palomino Highlands", ['PALMPOW'] = "Palmer-Taylor Power Station", ['PBLUFF'] = "Pacific Bluffs", ['PBOX'] = "Pillbox Hill", ['PROCOB'] = "Procopio Beach", ['RANCHO'] = "Rancho", ['RGLEN'] = "Richman Glen", ['RICHM'] = "Richman", ['ROCKF'] = "Rockford Hills", ['RTRAK'] = "Redwood Lights Track", ['SANAND'] = "San Andreas", ['SANCHIA'] = "San Chianski Mountain Range", ['SANDY'] = "Sandy Shores", ['SKID'] = "Mission Row", ['SLAB'] = "Stab City", ['STAD'] = "Maze Bank Arena", ['STRAW'] = "Strawberry", ['TATAMO'] = "Tataviam Mountains", ['TERMINA'] = "Terminal", ['TEXTI'] = "Textile City", ['TONGVAH'] = "Tongva Hills", ['TONGVAV'] = "Tongva Valley", ['VCANA'] = "Vespucci Canals", ['VESP'] = "Vespucci", ['VINE'] = "Vinewood", ['WINDF'] = "Ron Alternates Wind Farm", ['WVINE'] = "West Vinewood", ['ZANCUDO'] = "Zancudo River", ['ZP_ORT'] = "Port of South Los Santos", ['ZQTranslateAR'] = "Davis Quartz" }
local QBCore = exports['qb-core']:GetCoreObject()
local AllWeapons = json.decode('{"melee":{"dagger":"0x92A27487","bat":"0x958A4A8F","bottle":"0xF9E6AA4B","crowbar":"0x84BD7BFD","unarmed":"0xA2719263","flashlight":"0x8BB05FD7","golfclub":"0x440E4788","hammer":"0x4E875F73","hatchet":"0xF9DCBF2D","knuckle":"0xD8DF3C3C","knife":"0x99B507EA","machete":"0xDD5DF8D9","switchblade":"0xDFE37640","nightstick":"0x678B81B1","wrench":"0x19044EE0","battleaxe":"0xCD274149","poolcue":"0x94117305","stone_hatchet":"0x3813FC08"},"handguns":{"pistol":"0x1B06D571","pistol_mk2":"0xBFE256D4","combatpistol":"0x5EF9FEC4","appistol":"0x22D8FE39","stungun":"0x3656C8C1","pistol50":"0x99AEEB3B","snspistol":"0xBFD21232","snspistol_mk2":"0x88374054","heavypistol":"0xD205520E","vintagepistol":"0x83839C4","flaregun":"0x47757124","marksmanpistol":"0xDC4DB296","revolver":"0xC1B3C3D1","revolver_mk2":"0xCB96392F","doubleaction":"0x97EA20B8","raypistol":"0xAF3696A1"},"smg":{"microsmg":"0x13532244","smg":"0x2BE6766B","smg_mk2":"0x78A97CD0","assaultsmg":"0xEFE7E2DF","combatpdw":"0xA3D4D34","machinepistol":"0xDB1AA450","minismg":"0xBD248B55","raycarbine":"0x476BF155"},"shotguns":{"pumpshotgun":"0x1D073A89","pumpshotgun_mk2":"0x555AF99A","sawnoffshotgun":"0x7846A318","assaultshotgun":"0xE284C527","bullpupshotgun":"0x9D61E50F","musket":"0xA89CB99E","heavyshotgun":"0x3AABBBAA","dbshotgun":"0xEF951FBB","autoshotgun":"0x12E82D3D"},"assault_rifles":{"assaultrifle":"0xBFEFFF6D","assaultrifle_mk2":"0x394F415C","carbinerifle":"0x83BF0278","carbinerifle_mk2":"0xFAD1F1C9","advancedrifle":"0xAF113F99","specialcarbine":"0xC0A3098D","specialcarbine_mk2":"0x969C3D67","bullpuprifle":"0x7F229F94","bullpuprifle_mk2":"0x84D6FAFD","compactrifle":"0x624FE830"},"machine_guns":{"mg":"0x9D07F764","combatmg":"0x7FD62962","combatmg_mk2":"0xDBBD7280","gusenberg":"0x61012683"},"sniper_rifles":{"sniperrifle":"0x5FC3C11","heavysniper":"0xC472FE2","heavysniper_mk2":"0xA914799","marksmanrifle":"0xC734385A","marksmanrifle_mk2":"0x6A6C02E0"},"heavy_weapons":{"rpg":"0xB1CA77B1","grenadelauncher":"0xA284510B","grenadelauncher_smoke":"0x4DD2DC56","minigun":"0x42BF8A85","firework":"0x7F7497E5","railgun":"0x6D544C99","hominglauncher":"0x63AB0442","compactlauncher":"0x781FE4A","rayminigun":"0xB62D1F67"},"throwables":{"grenade":"0x93E220BD","bzgas":"0xA0973D5E","smokegrenade":"0xFDBC8A50","flare":"0x497FACC3","molotov":"0x24B17070","stickybomb":"0x2C3731D9","proxmine":"0xAB564B93","snowball":"0x787F0BB","pipebomb":"0xBA45E8B8","ball":"0x23C9F95C"},"misc":{"petrolcan":"0x34A67B97","fireextinguisher":"0x60EC506","parachute":"0xFBAB5776"}}')
local vehiclesCars = {0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,19,20};
local isTalking = false
local Playerid = PlayerId()
local ServerId = 0
function Startup()
	ServerId = GetPlayerServerId(Playerid)
	SendNUIMessage({ action = 'ui', config = Config.ui })
	SendNUIMessage({ action = 'setFont', url = Config.font.url, name = Config.font.name })
	SendNUIMessage({ action = 'setLogo', value = Config.serverLogo })
	SendNUIMessage({ action = 'setVoiceDistance', value = LocalPlayer.state.proximity and LocalPlayer.state.proximity.mode or "Normal" })
	SendNUIMessage({ action = 'setMoney', id = 'plyId', value = tostring(ServerId)  })
end

function trewDate()
	local timeString = nil
	local weekDay = Translate('weekDay_' .. GetClockDayOfWeek())
	local month = Translate('month_' .. GetClockMonth())
	local day = Translate('day_' .. GetClockDayOfMonth())
	local year = GetClockYear()
	local hour = GetClockHours()
	local minutes = GetClockMinutes()
	local time = nil
	local AmPm = ''


	if Config.date.AmPm then
		if hour >= 13 and hour <= 24 then
			hour = hour - 12
			AmPm = 'PM'
		else
			if hour == 0 or hour == 24 then
				hour = 12
			end
			AmPm = 'AM'
		end

	end

	if hour <= 9 then
		hour = '0' .. hour
	end
	if minutes <= 9 then
		minutes = '0' .. minutes
	end

	time = hour .. ':' .. minutes .. ' ' .. AmPm

	local date_format = Locales[Config.Locale]['date_format'][Config.date.format]

	if Config.date.format == 'default' then
		timeString = string.format(
			date_format,
			day, month, year
		)
	elseif Config.date.format == 'simple' then
		timeString = string.format(
			date_format,
			day, month
		)

	elseif Config.date.format == 'simpleWithHours' then
		timeString = string.format(
			date_format,
			time, day, month
		)	
	elseif Config.date.format == 'withWeekday' then
		timeString = string.format(
			date_format,
			weekDay, day, month, year
		)
	elseif Config.date.format == 'withHours' then
		timeString = string.format(
			date_format,
			time, day, month, year
		)
	elseif Config.date.format == 'withWeekdayAndHours' then
		timeString = string.format(
			date_format,
			time, weekDay, day, month, year
		)
	end

	return timeString
end

function has_value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	Startup()
end)

-- Vehicle Info
local vehicleCruiser
local vehicleSignalIndicator = 'off'
local seatbeltEjectSpeed = 45.0 
local seatbeltEjectAccel = 100.0
local seatbeltIsOn = false
local currSpeed = 0.0
local prevVelocity = {x = 0.0, y = 0.0, z = 0.0}

-- From ESX Legacy/ESX Infinity
function RegisterInput(command_name, label, input_group, key, on_press)
    RegisterCommand(command_name, on_press)
    RegisterKeyMapping(command_name, label, input_group, key)
    TriggerEvent('chat:removeSuggestion', '/'.. command_name)
end

CreateThread(function()
	Startup()
	while true do
		Wait(200)
		local player = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(player, false)
		local position = GetEntityCoords(player)
		local vehicleIsOn = GetIsVehicleEngineRunning(vehicle)
		local vehicleInfo

		if IsPauseMenuActive() then -- ESC Key
			if not isPauseMenu then
				isPauseMenu = not isPauseMenu
				SendNUIMessage({ action = 'toggleUi', value = false })
			end
		else
			if isPauseMenu then
				isPauseMenu = not isPauseMenu
				SendNUIMessage({ action = 'toggleUi', value = true })
			end
		end
		if IsPedInAnyVehicle(player, false) and vehicleIsOn then
			local vehicleClass = GetVehicleClass(vehicle)

			if not Config.ui.showMinimap then
				DisplayRadar(true)
			end

			-- Vehicle Speed
			local vehicleSpeedSource = GetEntitySpeed(vehicle)
			local vehicleSpeed
			if Config.vehicle.speedUnit == 'MPH' then
				vehicleSpeed = math.ceil(vehicleSpeedSource * 2.237)
			else
				vehicleSpeed = math.ceil(vehicleSpeedSource * 3.6)
			end

			-- Vehicle Gradient Speed
			local vehicleNailSpeed

			if vehicleSpeed > Config.vehicle.maxSpeed then
				vehicleNailSpeed = math.ceil(  280 - math.ceil( math.ceil(Config.vehicle.maxSpeed * 205) / Config.vehicle.maxSpeed) )
			else
				vehicleNailSpeed = math.ceil(  280 - math.ceil( math.ceil(vehicleSpeed * 205) / Config.vehicle.maxSpeed) )
			end

			-- Vehicle Fuel and Gear
			local vehicleFuel
			vehicleFuel = GetVehicleFuelLevel(vehicle)

			local vehicleGear = GetVehicleCurrentGear(vehicle)

			if (vehicleSpeed == 0 and vehicleGear == 0) or (vehicleSpeed == 0 and vehicleGear == 1) then
				vehicleGear = 'N'
			elseif vehicleSpeed > 0 and vehicleGear == 0 then
				vehicleGear = 'R'
			end

			-- Vehicle Lights
			local vehicleVal,vehicleLights,vehicleHighlights  = GetVehicleLightsState(vehicle)
			local vehicleIsLightsOn
			if vehicleLights == 1 and vehicleHighlights == 0 then
				vehicleIsLightsOn = 'normal'
			elseif (vehicleLights == 1 and vehicleHighlights == 1) or (vehicleLights == 0 and vehicleHighlights == 1) then
				vehicleIsLightsOn = 'high'
			else
				vehicleIsLightsOn = 'off'
			end

			-- Vehicle Siren
			local vehicleSiren

			if IsVehicleSirenOn(vehicle) then
				vehicleSiren = true
			else
				vehicleSiren = false
			end

			-- Vehicle Seatbelt
			if has_value(vehiclesCars, vehicleClass) and vehicleClass ~= 8 then

				local prevSpeed = currSpeed
                currSpeed = vehicleSpeedSource

                SetPedConfigFlag(PlayerPedId(), 32, true)

                if not seatbeltIsOn then
                	local vehIsMovingFwd = GetEntitySpeedVector(vehicle, true).y > 1.0
                    local vehAcc = (prevSpeed - currSpeed) / GetFrameTime()
                    if (vehIsMovingFwd and (prevSpeed > (seatbeltEjectSpeed/2.237)) and (vehAcc > (seatbeltEjectAccel*9.81))) then

                        SetEntityCoords(player, position.x, position.y, position.z - 0.47, true, true, true)
                        SetEntityVelocity(player, prevVelocity.x, prevVelocity.y, prevVelocity.z)
                        SetPedToRagdoll(player, 1000, 1000, 0, 0, 0, 0)
                    else
                        -- Update previous velocity for ejecting player
                        prevVelocity = GetEntityVelocity(vehicle)
                    end

                else

                	DisableControlAction(0, 75)

                end
			end

			vehicleInfo = {
				action = 'updateVehicle',
				status = true,
				speed = vehicleSpeed,
				nail = vehicleNailSpeed,
				gear = vehicleGear,
				fuel = vehicleFuel,
				lights = vehicleIsLightsOn,
				signals = vehicleSignalIndicator,
				cruiser = vehicleCruiser,
				type = vehicleClass,
				siren = vehicleSiren,
				seatbelt = {},

				config = {
					speedUnit = Config.vehicle.speedUnit,
					maxSpeed = Config.vehicle.maxSpeed
				}
			}

			vehicleInfo['seatbelt']['status'] = seatbeltIsOn
		else
			vehicleCruiser = false
			vehicleNailSpeed = 0
			vehicleSignalIndicator = 'off'

            seatbeltIsOn = false

			vehicleInfo = {
				action = 'updateVehicle',

				status = false,
				nail = vehicleNailSpeed,
				seatbelt = { status = seatbeltIsOn },
				cruiser = vehicleCruiser,
				signals = vehicleSignalIndicator,
				type = 0,
			}

			if Config.ui.showMinimap == false then
				DisplayRadar(false)
			end

		end

		SendNUIMessage(vehicleInfo)
	
		if Config.ui.showLocation then
			local player = PlayerPedId()
			local position = GetEntityCoords(player)
			local zoneNameFull = zones[GetNameOfZone(position.x, position.y, position.z)]
			local streetName = GetStreetNameFromHashKey(GetStreetNameAtCoord(position.x, position.y, position.z))

			local locationMessage = nil

			if zoneNameFull then 
				locationMessage = streetName .. ', ' .. zoneNameFull
			else
				locationMessage = streetName
			end

			locationMessage = string.format(
				Locales[Config.Locale]['you_are_on_location'],
				locationMessage
			)

			SendNUIMessage({ action = 'setText', id = 'location', value = locationMessage })
		end

		if Config.ui.showVoice then
			if NetworkIsPlayerTalking(Playerid) and not isTalking then 
				isTalking = not isTalking
				SendNUIMessage({ action = 'isTalking', value = isTalking })
			elseif not NetworkIsPlayerTalking(Playerid) and isTalking then
				isTalking = not isTalking
				SendNUIMessage({ action = 'isTalking', value = isTalking })
			end
		end
	end
end)

CreateThread(function()

	while true do
		Wait(2000)
		local PlayerData = QBCore.Functions.GetPlayerData()
		local playerStatus 
		local showPlayerStatus = 0
		playerStatus = { action = 'setStatus', status = {} }

		if Config.ui.showHealth then
			showPlayerStatus = (showPlayerStatus+1)

			playerStatus.isdead = IsPedDeadOrDying(PlayerPedId(), true)

			playerStatus['status'][showPlayerStatus] = {
				name = 'health',
				value = GetEntityHealth(PlayerPedId()) - 100
			}

		end

		if Config.ui.showDate then
			SendNUIMessage({ action = 'setText', id = 'date', value = trewDate() })
		end

		if Config.ui.showArmor then
			showPlayerStatus = (showPlayerStatus+1)

			playerStatus['status'][showPlayerStatus] = {
				name = 'armor',
				value = GetPedArmour(PlayerPedId()),
			}
		end

		if Config.ui.showStamina  then
			showPlayerStatus = (showPlayerStatus+1)

			playerStatus['status'][showPlayerStatus] = {
				name = 'stamina',
				value = 100 - GetPlayerSprintStaminaRemaining(Playerid),
			}
		end

		if showPlayerStatus > 0 then
			SendNUIMessage(playerStatus)
		end

	if PlayerData and PlayerData.job then
  	   local job
  	   local Crypto = PlayerData.money.crypto
  	   local bank = PlayerData.money.bank
	   local money = PlayerData.money.cash

        if PlayerData.job.label == PlayerData.job.grade.name then
          job = PlayerData.job.grade.name
        else
          job = PlayerData.job.label .. ': ' .. PlayerData.job.grade.name
        end

		SendNUIMessage({ action = 'setText', id = 'job', value = job })
		SendNUIMessage({ action = 'setMoney', id = 'wallet', value = money })
		SendNUIMessage({ action = 'setMoney', id = 'bank', value = bank })
		SendNUIMessage({ action = 'setMoney', id = 'blackMoney', value = Crypto })

  		if PlayerData.job.isboss then
  			if (Config.ui.showSocietyMoney) then
  				SendNUIMessage({ action = 'element', task = 'enable', value = 'society' })
  			end
			  QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetAccount', function(cb)
				SendNUIMessage({ action = 'setMoney', id = 'society', value = tostring(cb) })
			end, PlayerData.job.name)
  		else
  			SendNUIMessage({ action = 'element', task = 'disable', value = 'society' })
  		end
  	end

  	local playerStatus 
  	local showPlayerStatus = 0
  	playerStatus = { action = 'setStatus', status = {} }

  	if Config.ui.showHunger then
  		showPlayerStatus = (showPlayerStatus+1)
		playerStatus['status'][showPlayerStatus] = {
			name = 'hunger',
			value = math.floor(100-PlayerData.metadata["hunger"])
		}
  	end

  	if Config.ui.showThirst then
  		showPlayerStatus = (showPlayerStatus+1)
		playerStatus['status'][showPlayerStatus] = {
			name = 'thirst',
			value = math.floor(100-PlayerData.metadata["thirst"])
		}
  	end

	if Config.ui.showStress then
		showPlayerStatus = (showPlayerStatus+1)
	  	playerStatus['status'][showPlayerStatus] = {
		  name = 'stress',
		  value = math.floor(100-PlayerData.metadata["stress"])
	  }
	end

  	if showPlayerStatus > 0 then
  	    SendNUIMessage(playerStatus)
  	end

	  if Config.ui.showVoice then
		AddEventHandler('pma-voice:setTalkingMode', function()
			SendNUIMessage({ action = 'setVoiceDistance', value = LocalPlayer.state.proximity and LocalPlayer.state.proximity.mode or "Normal" })
		end)
	  end
    end
end)

-- Weapons
if Config.ui.showWeapons then
	CreateThread(function()
			while true do
				local Sleep = 800

				local player = PlayerPedId()
				local status = {}

				if IsPedArmed(player, 7) then
					Sleep = 100
					local weapon = GetSelectedPedWeapon(player)
					local ammoTotal = GetAmmoInPedWeapon(player,weapon)
					local bool,ammoClip = GetAmmoInClip(player,weapon)
					local ammoRemaining = math.floor(ammoTotal - ammoClip)
					
					status['armed'] = true

					for key,value in pairs(AllWeapons) do

						for keyTwo,valueTwo in pairs(AllWeapons[key]) do
							if weapon == joaat('weapon_'..keyTwo) then
								status['weapon'] = keyTwo


								if key == 'melee' then
									SendNUIMessage({ action = 'element', task = 'disable', value = 'weapon_bullets' })
									SendNUIMessage({ action = 'element', task = 'disable', value = 'bullets' })
								else
									if keyTwo == 'stungun' then
										SendNUIMessage({ action = 'element', task = 'disable', value = 'weapon_bullets' })
										SendNUIMessage({ action = 'element', task = 'disable', value = 'bullets' })
									else
										SendNUIMessage({ action = 'element', task = 'enable', value = 'weapon_bullets' })
										SendNUIMessage({ action = 'element', task = 'enable', value = 'bullets' })
									end
								end

							end
						end

					end

					SendNUIMessage({ action = 'setText', id = 'weapon_clip', value = ammoClip })
					SendNUIMessage({ action = 'setText', id = 'weapon_ammo', value = ammoRemaining })

				else
					if status['armed'] then
						status['armed'] = false
						SendNUIMessage({ action = 'updateWeapon', status = status })
					end
				end

				SendNUIMessage({ action = 'updateWeapon', status = status })
				Wait(Sleep)
			end
	end)
end

RegisterInput("cruise", "Cruise Control", "keyboard", Config.vehicle.keys.cruiser, function()
	local player = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
	local vehicleSpeedSource = GetEntitySpeed(vehicle)
	if  GetPedInVehicleSeat(vehicle, -1) ~= player then
		return
	end
	if vehicleCruiser == 'on' then
		vehicleCruiser = 'off'
		SetEntityMaxSpeed(vehicle, GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel"))
		
	else
		vehicleCruiser = 'on'
		SetEntityMaxSpeed(vehicle, vehicleSpeedSource)
	end
end)

RegisterInput("seatbelt", "Seatbelt", "keyboard", Config.vehicle.keys.seatbelt, function()
	local player = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
	local vehicleClass = GetVehicleClass(vehicle)
	if not (IsPedInAnyVehicle(player, false) and GetIsVehicleEngineRunning(vehicle)) then
		return
	end
	if has_value(vehiclesCars, vehicleClass) ~= true and vehicleClass == 8 then 
		return 
	end
	seatbeltIsOn = not seatbeltIsOn
end)

RegisterInput("leftindicator", "Left Indicator", "keyboard", Config.vehicle.keys.signalLeft, function()
	local player = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
	local vehicleClass = GetVehicleClass(vehicle)
	if has_value(vehiclesCars, vehicleClass) ~= true then
		return
	end
	if vehicleSignalIndicator == 'off' then
		vehicleSignalIndicator = 'left'
	else
		vehicleSignalIndicator = 'off'
	end

	TriggerEvent('trew_hud_ui:setCarSignalLights', vehicleSignalIndicator)
end)

RegisterInput("rightindicator", "Right Indicator", "keyboard", Config.vehicle.keys.signalRight, function()
	local player = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
	local vehicleClass = GetVehicleClass(vehicle)
	if has_value(vehiclesCars, vehicleClass) ~= true then
		return
	end
	if vehicleSignalIndicator == 'off' then
		vehicleSignalIndicator = 'right'
	else
		vehicleSignalIndicator = 'off'
	end

	TriggerEvent('trew_hud_ui:setCarSignalLights', vehicleSignalIndicator)
end)

RegisterInput("bothindicator", "Both Indicators", "keyboard", Config.vehicle.keys.signalBoth, function()
	local player = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
	local vehicleClass = GetVehicleClass(vehicle)
	if has_value(vehiclesCars, vehicleClass) ~= true then
		return
	end
	if vehicleSignalIndicator == 'off' then
		vehicleSignalIndicator = 'both'
	else
		vehicleSignalIndicator = 'off'
	end

	TriggerEvent('trew_hud_ui:setCarSignalLights', vehicleSignalIndicator)
end)

AddEventHandler('trew_hud_ui:setCarSignalLights', function(status)
	local driver = GetVehiclePedIsIn(PlayerPedId(), false)
	local hasTrailer,vehicleTrailer = GetVehicleTrailerVehicle(driver)
	local leftLight
	local rightLight

	if status == 'left' then
		leftLight = false
		rightLight = true
		if hasTrailer then driver = vehicleTrailer end
	elseif status == 'right' then
		leftLight = true
		rightLight = false
		if hasTrailer then driver = vehicleTrailer end

	elseif status == 'both' then
		leftLight = true
		rightLight = true
		if hasTrailer then driver = vehicleTrailer end
	else
		leftLight = false
		rightLight = false
		if hasTrailer then driver = vehicleTrailer end
	end

	SetVehicleIndicatorLights(driver, 0, leftLight)
	SetVehicleIndicatorLights(driver, 1, rightLight)
end)

local toggleui = false
RegisterCommand('toggleui', function()
	if not toggleui then
		SendNUIMessage({ action = 'element', task = 'disable', value = 'job' })
		SendNUIMessage({ action = 'element', task = 'disable', value = 'society' })
		SendNUIMessage({ action = 'element', task = 'disable', value = 'bank' })
		SendNUIMessage({ action = 'element', task = 'disable', value = 'blackMoney' })
		SendNUIMessage({ action = 'element', task = 'disable', value = 'wallet' })
	else
		if (Config.ui.showJob) then
			SendNUIMessage({ action = 'element', task = 'enable', value = 'job' })
		end
		if (Config.ui.showSocietyMoney) then
			SendNUIMessage({ action = 'element', task = 'enable', value = 'society' })
		end
		if (Config.ui.showBankMoney) then
			SendNUIMessage({ action = 'element', task = 'enable', value = 'bank' })
		end
		if (Config.ui.showCrypto) then
			SendNUIMessage({ action = 'element', task = 'enable', value = 'blackMoney' })
		end
		if (Config.ui.showWalletMoney) then
			SendNUIMessage({ action = 'element', task = 'enable', value = 'wallet' })
		end
	end

	toggleui = not toggleui
end)

exports('createStatus', function(args)
	local statusCreation = { action = 'createStatus', status = args['status'], color = args['color'], icon = args['icon'] }
	SendNUIMessage(statusCreation)
end)

exports('setStatus', function(args)
	local playerStatus = { action = 'setStatus', status = {
		{ name = args['name'], value = args['value'] }
	}}
	SendNUIMessage(playerStatus)
end)
