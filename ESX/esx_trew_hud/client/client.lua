local zones = json.decode('{"HAWICK":"Hawick","ELYSIAN":"Elysian Island","SANDY":"Sandy Shores","DESRT":"Grand Senora Desert","LEGSQU":"Legion Square","MTCHIL":"Mount Chiliad","PALMPOW":"Palmer-Taylor Power Station","CCREAK":"Cassidy Creek","PROL":"North Yankton","PBLUFF":"Pacific Bluffs","MIRR":"Mirror Park","RICHM":"Richman","ZQ_UAR":"Davis Quartz","EAST_V":"East Vinewood","LAGO":"Lago Zancudo","BRADT":"Braddock Tunnel","NCHU":"North Chumash","CYPRE":"Cypress Flats","GALFISH":"Galilee","ZP_ORT":"Port of South Los Santos","PALETO":"Paleto Bay","BURTON":"Burton","GRAPES":"Grapeseed","DELSOL":"La Puerta","ALAMO":"Alamo Sea","DELPE":"Del Perro","ARMYB":"Fort Zancudo","STAD":"Maze Bank Arena","MORN":"Morningwood","CANNY":"Raton Canyon","ISHeist":"Cayo Perico Island","TEXTI":"Textile City","ALTA":"Alta","DTVINE":"Downtown Vinewood","HARMO":"Harmony","MURRI":"Murrieta Heights","KOREAT":"Little Seoul","GALLI":"Galileo Park","DOWNT":"Downtown","ZANCUDO":"Zancudo River","WVINE":"West Vinewood","BAYTRE":"Baytree Canyon","WINDF":"Ron Alternates Wind Farm","VINE":"Vinewood","EBURO":"El Burro Heights","DAVIS":"Davis","STRAW":"Strawberry","TONGVAV":"Tongva Valley","PALHIGH":"Palomino Highlands","TONGVAH":"Tongva Hills","CALAFB":"Calafia Bridge","CHAMH":"Chamberlain Hills","PBOX":"Pillbox Hill","MTJOSE":"Mount Josiah","TERMINA":"Terminal","HUMLAB":"Humane Labs and Research","PALFOR":"Paleto Forest","PALCOV":"Paleto Cove","TATAMO":"Tataviam Mountains","LDAM":"Land Act Dam","MOVIE":"Richards Majestic","VCANA":"Vespucci Canals","HORS":"Vinewood Racetrack","SKID":"Mission Row","CHU":"Chumash","SANCHIA":"San Chianski Mountain Range","CHIL":"Vinewood Hills","ROCKF":"Rockford Hills","RTRAK":"Redwood Lights Track","RGLEN":"Richman Glen","CMSW":"Chiliad Mountain State Wilderness","PROCOB":"Procopio Beach","RANCHO":"Rancho","GREATC":"Great Chaparral","BRADP":"Braddock Pass","ELGORL":"El Gordo Lighthouse","VESP":"Vespucci","OCEANA":"Pacific Ocean","JAIL":"Bolingbroke Penitentiary","OBSERV":"Galileo Observatory","BEACH":"Vespucci Beach","BHAMCA":"Banham Canyon","GOLF":"GWC and Golfing Society","SLAB":"Stab City","LACT":"Land Act Reservoir","LMESA":"La Mesa","DELBE":"Del Perro Beach","BANNING":"Banning","MTGORDO":"Mount Gordo","LOSPUER":"La Puerta","NOOSE":"N.O.O.S.E","AIRP":"Los Santos International Airport"}')

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
	SendNUIMessage({ action = 'setMoney', id = 'plyId', value = tostring(ServerId) })
end

AddEventHandler('esx:onPlayerSpawn', function()
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

CreateThread(function()
	Startup()
	while true do
		Wait(200)
		local player = ESX.PlayerData.ped
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

			if not Config.ui.showMinimapOnFoot and Config.ui.showMinimapInVehicle then
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

                SetPedConfigFlag(ESX.PlayerData.ped, 32, true)

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

			if not Config.ui.showMinimapOnFoot then
				DisplayRadar(false)
			end

		end

		SendNUIMessage(vehicleInfo)
	
		if Config.ui.showLocation then
			local player = ESX.PlayerData.ped
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

		local playerStatus 
		local showPlayerStatus = 0
		playerStatus = { action = 'setStatus', status = {} }

		if Config.ui.showHealth then
			showPlayerStatus = (showPlayerStatus+1)

			playerStatus.isdead = ESX.PlayerData.dead

			playerStatus['status'][showPlayerStatus] = {
				name = 'health',
				value = GetEntityHealth(ESX.PlayerData.ped) - 100
			}

		end

		if Config.ui.showDate then
			SendNUIMessage({ action = 'setText', id = 'date', value = trewDate() })
		end

		if Config.ui.showArmor then
			showPlayerStatus = (showPlayerStatus+1)

			playerStatus['status'][showPlayerStatus] = {
				name = 'armor',
				value = GetPedArmour(ESX.PlayerData.ped),
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

	if ESX.PlayerData.job then
  	   local job
  	   local blackMoney
  	   local bank
	   local money

        if ESX.PlayerData.job.label == ESX.PlayerData.job.grade_label then
          job = ESX.PlayerData.job.grade_label
        else
          job = ESX.PlayerData.job.label .. ': ' .. ESX.PlayerData.job.grade_label
        end

        for i=1, #ESX.PlayerData.accounts, 1 do
          if ESX.PlayerData.accounts[i].name == 'black_money' then
                blackMoney = ESX.PlayerData.accounts[i].money
          elseif ESX.PlayerData.accounts[i].name == 'bank' then
                bank = ESX.PlayerData.accounts[i].money
             elseif ESX.PlayerData.accounts[i].name == 'money' then
                money = ESX.PlayerData.accounts[i].money
          end
        end

		SendNUIMessage({ action = 'setText', id = 'job', value = job })
		SendNUIMessage({ action = 'setMoney', id = 'wallet', value = money })
		SendNUIMessage({ action = 'setMoney', id = 'bank', value = bank })
		SendNUIMessage({ action = 'setMoney', id = 'blackMoney', value = blackMoney })

  		if ESX.PlayerData.job.grade_name and ESX.PlayerData.job.grade_name == 'boss' then
  			if (Config.ui.showSocietyMoney) then
  				SendNUIMessage({ action = 'element', task = 'enable', value = 'society' })
  			end
  			ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
  				SendNUIMessage({ action = 'setMoney', id = 'society', value = money })
  			end, ESX.PlayerData.job.name)
  		else
  			SendNUIMessage({ action = 'element', task = 'disable', value = 'society' })
  		end
  	end

  	local playerStatus 
  	local showPlayerStatus = 0
  	playerStatus = { action = 'setStatus', status = {} }

  	if Config.ui.showHunger then
  		showPlayerStatus = (showPlayerStatus+1)

  		TriggerEvent('esx_status:getStatus', 'hunger', function(status)
  			playerStatus['status'][showPlayerStatus] = {
  				name = 'hunger',
  				value = math.floor(100-status.getPercent())
  			}
  		end)

  	end

  	if Config.ui.showThirst then
  		showPlayerStatus = (showPlayerStatus+1)

  		TriggerEvent('esx_status:getStatus', 'thirst', function(status)
  			playerStatus['status'][showPlayerStatus] = {
  				name = 'thirst',
  				value = math.floor(100-status.getPercent())
  			}
  		end)
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

				local player = ESX.PlayerData.ped
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

ESX.RegisterInput("cruise", "[HUD] Cruise Control", "keyboard", Config.vehicle.keys.cruiser, function()
	local player = ESX.PlayerData.ped
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

ESX.RegisterInput("seatbelt", "[HUD] Seatbelt", "keyboard", Config.vehicle.keys.seatbelt, function()
	local player = ESX.PlayerData.ped
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

ESX.RegisterInput("leftindicator", "[HUD] Left Indicator", "keyboard", Config.vehicle.keys.signalLeft, function()
	local player = ESX.PlayerData.ped
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

ESX.RegisterInput("rightindicator", "[HUD] Right Indicator", "keyboard", Config.vehicle.keys.signalRight, function()
	local player = ESX.PlayerData.ped
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

ESX.RegisterInput("bothindicator", "[HUD] Both Indicators", "keyboard", Config.vehicle.keys.signalBoth, function()
	local player = ESX.PlayerData.ped
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
	local driver = GetVehiclePedIsIn(ESX.PlayerData.ped, false)
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
		if (Config.ui.showBlackMoney) then
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

if not Config.ui.showMinimapHealth then 
	Citizen.CreateThread(function()
		local minimap = RequestScaleformMovie("minimap")
		SetBigmapActive(true, false)
		Wait(0)
		SetBigmapActive(false, false)
		while true do
			local Sleep = 500
			if not IsRadarHidden() then
				Sleep = 0
				BeginScaleformMovieMethod(minimap, "SETUP_HEALTH_ARMOUR")
				ScaleformMovieMethodAddParamInt(3)
				EndScaleformMovieMethod()
			end
			Wait(Sleep)
		end
	
	end)
end
