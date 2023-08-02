-- credit: https://github.com/esx-framework/esx_core/blob/main/%5Bcore%5D/es_extended/locale.lua
Locales = {}

function Translate(str, ...)  -- Translate string
	if Locales[Config.Locale] then
		if Locales[Config.Locale][str] then
			return string.format(Locales[Config.Locale][str], ...)
		elseif Config.Locale ~= 'en' and Locales['en'] and Locales['en'][str] then
			return string.format(Locales['en'][str], ...)
		else
			return 'Translation [' .. Config.Locale .. '][' .. str .. '] does not exist'
		end
	elseif Config.Locale ~= 'en' and Locales['en'] and Locales['en'][str] then
			return string.format(Locales['en'][str], ...)
	else
		return 'Locale [' .. Config.Locale .. '] does not exist'
	end
end
