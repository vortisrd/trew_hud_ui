# Trew HUD UI

User Interface created originally for ESX and then adapted for VRP/VRPEX.

# PROJECT DISCONTINUED

It was nice to play GTA5 RP and learn LUA in order to code the Trew HUD UI, but after so many struggles with not only the FiveM community and with the thing itself, I decided that I will no longer improve this project. It's been 6 months since the last time I played GTA5 RP and it makes no sense to continue this.

If you want to fork this project or send pull request, feel free to do it. It has been a nice ride. :) BALLAS FOREVER!

## Demo - click on the image below.
[![TREW HUD UI DEMO](https://i.imgur.com/DyaZ6Jl.png)](https://youtu.be/u1QTJ5aHcGA)



## Installation

1.  Extract the .zip or Open the .zip.
2.  Place `trew_hud_ui` in your resources directory.
3.  Add `start trew_hud_ui` to your server.cfg



## Special Instructions for the ESX version

### Requirements

-   [es_extended](https://github.com/ESX-Org/es_extended)
-   [esx_society](https://github.com/ESX-Org/esx_society)
-   [esx_addonaccount](https://github.com/ESX-Org/esx_addonaccount)


### Optional

-   [esx_basicneeds](https://github.com/ESX-Org/esx_basicneeds)
-   [esx_status](https://github.com/ESX-Org/esx_status)
-   [LegacyFuel](https://github.com/InZidiuZ/LegacyFuel) (it should be started **BEFORE** the trew\_hud\_ui)


### What you can disable

-   [RadarWhileDriving](https://github.com/Flatracer/RadarWhileDriving)


### Post Installation

-   Go to **es_extended** _config.lua_ and turn **Config.EnableHud** to _false_
-   If needed, go to **esx_basicneeds** _main.lua_ and replace this code


		TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#CFAD0F', function(status)
			return true
		end, function(status)
			status.remove(1000)
		end)
		TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0C98F1', function(status)
			return true
		end, function(status)
			status.remove(750)
		end)
		
for this one

-
		TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#CFAD0F', function(status)
			return false
		end, function(status)
			status.remove(1000)
		end)
		TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0C98F1', function(status)
			return false
		end, function(status)
			status.remove(750)
		end)
		



## Special Instructions for the VRP/VRPEX versions

Inside **config.lua** you will see a _Config.vRP_ with certain items needed to set up properly, like black money. Since black money is considered an item on VRP/VRPEX versions, you need to put the ID of said item on this configuration. On most VRP versions, the ID is **dirty_money**.

**Config.vRP**  
Special settings for vRP/vRPEX

-   **items**
    -   _blackMoney:_ The item ID for Black Money.
    
    
    

## Config.lua settings

**Config.Locale**  
The language. Default is _en_.

**Config.serverLogo**  
Logo for your server. It’s suggested that you upload a **PNG** file to websites like **[imgur.com](http://imgur.com)** and then paste the link there.

**Config.font**  
Font configuration for the UI. Default is _Montserrat_ and the link points up to _Google Fonts_. It’s suggested that you look up for a font there and place the name and the link on it’s location.

-   **name**: The name of the font
-   **link**: CSS Stylesheet file link for the font

**Config.date**  
Date format for the GPS location.

-   **format**:
    
    -   _default:_ It’s the default format;
    -   _withWeekDay:_ Format that shows week day names, like _monday, tuesday, wednesday_, etc;
    -   _withHours:_ Format that shows the current time in game;
    -   _withWeekAndHours:_ A mix of _withWeekDay_ and _withHours_.
    -   _simple:_ Format that shows only day and month;
    -   _simpleWithHours:_ Same as _simple_, but also showing the time.
-   **AmPm**: set it to _true_ if you want to use AM/PM time format, _false_ if you don’t.
    

**Config.voice**  
Voice settings for the UI. OneSync compatible

-   **levels**:
    
    -   _default:_ Distance in meters for a default distance. **Default** is _5.0_;
    -   _shout:_ Distance in meters for a shout distance. **Default** is _12.0_;
    -   _whisper:_ Distance in meters for a whisper distance. **Default** is _1.0_;
    -   _current:_ It’s **important** that this is left unchanged.
-   **keys**:
    
    -   _distance:_ Distance in meters for a default distance. **Default** is _HOME_.

**Config.vehicle**  
Vehicle and speedometer settings

-   **speedUnit**: It should be set either _KMH_ or _MPH_. **Default** is _KMH_;
-   **maxSpeed**: The top speed the Speedometer is allowed to go. Default is _240_;
-   **keys**:
    -   _seatbelt:_ Buckle/unbuckle seatbelt. **Default** is _K_;
    -   _cruiser:_ Activate/deactivate cruiser speed. **Default** is _CAPS_;
    -   _signalLeft:_ Activate/deactivate car left signal. **Default** is _LEFT_;
    -   _signalRight:_ Activate/deactivate car right signal. **Default** is _RIGHT_;
    -   _signalBoth:_ Activate/deactivate car danger signal. **Default** is _DOWN_;

**Config.ui**  
Display or hide elements of the HUD

-   **showJob**: Displays the job name. **Default** is _true_;
-   **showWalletMoney**: Displays the money on your wallet. **Default** is _true_;
-   **showBankMoney**: Displays the money on your bank account. **Default** is _true_;
-   **showBlackMoney**: Displays the black money you have. **Default** is _true_;
-   **showSocietyMoney**: If you are the boss of a job, it displays the money you have in the society vault. **Default** is _true_; **(Society money only works on ESX)**
-   **showDate**: Displays the date. **Default** is _true_;
-   **showLocation**: Displays the location. **Default** is _true_;
-   **showHealth**: Displays your health. **Default** is _true_;
-   **showArmor**: Displays your armor. **Default** is _true_;
-   **showStamina**: Displays your stamina. **Default** is _true_;
-   **showHunger**: Displays hunger. **Default** is _true_;
-   **showThirst**: Displays thirst. **Default** is _true_;
-   **showMinimap**: Displays the minimap while off the vehicle. **Default** is _false_;
-   **showVoice**: Displays/use the voice controller. **Default** is _true_;
-   **showWeapons**: Displays the weapons you have on your hand, with ammo. **Default** is _true_;

## Adding Custom Status - click on the image below.

[![TREW HUD UI STATUS CREATION](https://i.imgur.com/O1Cuz4I.png)](https://streamable.com/kzns5)
**Check by the thirst indicator**

You can create custom indicators for status you already have, like stress status, drunken, shit, piss, you name it! You would just have to use the new **exports** functions. I would recommend you create a new script with the code and load it below **trew\_hud\_ui** on your server.cfg.

  

**exports.trew\_hud\_ui.createStatus**  
Creates a new indicator after the existing ones.

**Example:**

	local STRESS_ACTIVE = false

	AddEventHandler('playerSpawned', function()
		
		if STRESS_ACTIVE == false then
			exports.trew_hud_ui:createStatus({
			    status = 'stress',
			    color = '#FF0090',
			    icon = '<i class="fas fa-brain"></i>'
			});
			STRESS_ACTIVE = true
		end

	end)
		

**Usage:**

-   **status**: The status ID. It's purely to identify it;
-   **color**: The color you want for the status;
-   **icon**: The HTML code for the icon. You can search on [FontAwesome](https://fontawesome.com/) for an icon and when you find one of your liking, change it there.

  

**exports.trew\_hud\_ui.setStatus**  
It is what makes the status update. It should be set on a Wait() timer to update on whenever your custom status is. The example below ticks while getting from a custom status registered on **esx_status**.

**Example:**

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)
			
			local STRESS_STATUS
	
			TriggerEvent('esx_status:getStatus', 'stress', function(status)
			    STRESS_STATUS = status.getPercent()
			end)
	
			exports.trew_hud_ui:setStatus({
			    name = 'stress',
			    value = STRESS_STATUS
			});
		end
	end)
		

**Usage:**

-   **name**: The name of the status. It should be correspondent with the ID when you created it;
-   **value**: The percentage value for the status, from 0 to 100.

## Chat commands

**/toggleui**  
Enables/Disables HUD information elements, like _and job all types money_. Useful for streamers.

_**Usage example:**_ /toggleui

## Donate

This HUD is the product of 4 months of work, craft and creativity. While now I'm giving it for free, if you want to help, consider donating any ammount you want to. It will be really appreciated. :)

[![](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=S735RJA49KSJ8&currency_code=USD&source=url)
