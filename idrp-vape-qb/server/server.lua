QBCore = exports['qb-core']:GetCoreObject()

--Vape items
for _, v in pairs(Config.Vape_Models) do
	QBCore.Functions.CreateUseableItem(v.itemName, function(source, item)
		local Player = QBCore.Functions.GetPlayer(source)
		if Player.Functions.GetItemBySlot(item.slot) then
			TriggerClientEvent('idrp_VapeModel', source, v.itemName)
		end
	end)
end

--Cloud SFX
RegisterServerEvent("idrp:VapeEffect", function(entity)
	TriggerClientEvent("idrp:VapeSmoke", -1, entity)
end)

--still working out how to call to a table for multiple juice, as long as you have required item and amount you can take a hit
-- i = ?? check with Jimathy
--[[QBCore.Functions.CreateCallback('idrp:VapeJuice', function(source, cb)
	for _, v in pairs(Config.Jucie) do
		local Player = QBCore.Functions.GetPlayer(source)
		if Player.Functions.GetItemByName(v.itemName) then
			Player.Functions.RemoveItem(v.itemName, 1)
			return cb(true)
		else
			return cb(false)
		end
	end
end)]]--
