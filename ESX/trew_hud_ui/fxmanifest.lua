fx_version 'adamant'

game 'gta5'

description 'Trew HUD UI'

version '1.3.0'

ui_page 'html/ui.html'


files {
	'html/ui.html',
	'html/main.css',
	'html/app.js',

	'html/img/vehicle-gear.png',
	'html/img/vehicle-lights.png',
	'html/img/vehicle-lights-high.png',
	'html/img/vehicle-seatbelt.png',

	'html/img/weapon-bullets.png',

	'html/img/weapons/appistol.png',
	'html/img/weapons/assaultrifle.png',
	'html/img/weapons/assaultrifle_mk2.png',
	'html/img/weapons/assaultshotgun.png',
	'html/img/weapons/assaultsmg.png',
	'html/img/weapons/autoshotgun.png',
	'html/img/weapons/ball.png',
	'html/img/weapons/bat.png',
	'html/img/weapons/battleaxe.png',
	'html/img/weapons/bottle.png',
	'html/img/weapons/bullpuprifle.png',
	'html/img/weapons/bullpuprifle_mk2.png',
	'html/img/weapons/bullpupshotgun.png',
	'html/img/weapons/bzgas.png',
	'html/img/weapons/carbinerifle.png',
	'html/img/weapons/carbinerifle_mk2.png',
	'html/img/weapons/combatmg.png',
	'html/img/weapons/combatmg_mk2.png',
	'html/img/weapons/combatpdw.png',
	'html/img/weapons/combatpistol.png',
	'html/img/weapons/compactlauncher.png',
	'html/img/weapons/compactrifle.png',
	'html/img/weapons/crowbar.png',
	'html/img/weapons/dagger.png',
	'html/img/weapons/dbshotgun.png',
	'html/img/weapons/doubleaction.png',
	'html/img/weapons/firework.png',
	'html/img/weapons/flare.png',
	'html/img/weapons/flaregun.png',
	'html/img/weapons/flashlight.png',
	'html/img/weapons/golfclub.png',
	'html/img/weapons/grenade.png',
	'html/img/weapons/grenadelauncher.png',
	'html/img/weapons/grenadelauncher_smoke.png',
	'html/img/weapons/gusenberg.png',
	'html/img/weapons/hammer.png',
	'html/img/weapons/hatchet.png',
	'html/img/weapons/heavypistol.png',
	'html/img/weapons/heavyshotgun.png',
	'html/img/weapons/heavysniper.png',
	'html/img/weapons/heavysniper_mk2.png',
	'html/img/weapons/hominglauncher.png',
	'html/img/weapons/knife.png',
	'html/img/weapons/knuckle.png',
	'html/img/weapons/machete.png',
	'html/img/weapons/machinepistol.png',
	'html/img/weapons/marksmanpistol.png',
	'html/img/weapons/marksmanrifle.png',
	'html/img/weapons/marksmanrifle_mk2.png',
	'html/img/weapons/mg.png',
	'html/img/weapons/microsmg.png',
	'html/img/weapons/minigun.png',
	'html/img/weapons/minismg.png',
	'html/img/weapons/molotov.png',
	'html/img/weapons/musket.png',
	'html/img/weapons/nightstick.png',
	'html/img/weapons/petrolcan.png',
	'html/img/weapons/pipebomb.png',
	'html/img/weapons/pistol.png',
	'html/img/weapons/pistol50.png',
	'html/img/weapons/pistol_mk2.png',
	'html/img/weapons/poolcue.png',
	'html/img/weapons/proxmine.png',
	'html/img/weapons/pumpshotgun.png',
	'html/img/weapons/pumpshotgun_mk2.png',
	'html/img/weapons/railgun.png',
	'html/img/weapons/raycarbine.png',
	'html/img/weapons/rayminigun.png',
	'html/img/weapons/raypistol.png',
	'html/img/weapons/revolver.png',
	'html/img/weapons/revolver_mk2.png',
	'html/img/weapons/rpg.png',
	'html/img/weapons/sawnoffshotgun.png',
	'html/img/weapons/smg.png',
	'html/img/weapons/smg_mk2.png',
	'html/img/weapons/smokegrenade.png',
	'html/img/weapons/sniperrifle.png',
	'html/img/weapons/snowball.png',
	'html/img/weapons/snspistol.png',
	'html/img/weapons/snspistol_mk2.png',
	'html/img/weapons/specialcarbine.png',
	'html/img/weapons/specialcarbine_mk2.png',
	'html/img/weapons/stickybomb.png',
	'html/img/weapons/stone_hatchet.png',
	'html/img/weapons/stungun.png',
	'html/img/weapons/switchblade.png',
	'html/img/weapons/unarmed.png',
	'html/img/weapons/vintagepistol.png',
	'html/img/weapons/wrench.png',


	
	'html/sounds/seatbelt-buckle.ogg',
	'html/sounds/seatbelt-unbuckle.ogg',

	'html/sounds/car-indicators.ogg',
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/es.lua',
	'config.lua',
	'client/client.lua',
	'client/hansolo.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/es.lua',
	'config.lua',
	'server/server.lua',
	'server/milleniumfalcon.lua'
}

dependencies {
	'es_extended'
}
