QBCore = exports['qb-core']:GetCoreObject()
local IsPlayerAbleToVape = false

RegisterNetEvent('idrp_VapeModel', function(itemName)
	local ped = GetPlayerPed(PlayerId())
	local animdict = "anim@heists@humane_labs@finale@keycards"
	local anim = "ped_b_enter_loop"
	for _, v in pairs(Config.Vape_Models) do
		if v.itemName == itemName then
			Prop_name = v.prop
			if DoesEntityExist(ped) and not IsEntityDead(ped) then
				if IsPedOnFoot(ped) then
					if IsPlayerAbleToVape == false then
						IsPlayerAbleToVape = true
						while (not HasAnimDictLoaded(animdict)) do
							RequestAnimDict(animdict)
							Wait(1)
						end
						RequestModel(Prop_name)
						while not HasModelLoaded(Prop_name) do
							Wait(0)
						end
						TaskPlayAnim(ped, animdict, anim, 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
						local x, y, z = table.unpack(GetEntityCoords(ped))
						local coords = table.unpack(Config.Vape_Models.coords)		--prop placement
						local rcoords = table.unpack(Config.Vape_Models.rcoords)		--prop rotation
						Vapemodel = CreateObject(GetHashKey(Prop_name), x, y, z +0.2,  true,  true, true)
						AttachEntityToEntity(Vapemodel, ped, GetPedBoneIndex(ped, v.bone), coords.x, coords.y, rcoords.z, rcoords.x, rcoords.y, rcoords.z, true, true, false, true, 1, true)
						lib.notify({description = Config.Ox_lib.take_hit, type = 'success', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
						--QBCore.Functions.Notify('[E] to take a Hit [G] to stash', 'success', 9500)		----uncomment if QBCore Notify
					else
						lib.notify({description = Config.Ox_lib.holding, type = 'error', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
						--QBCore.Functions.Notify('You already have it', 'error', 7500)		--uncomment if QBCore Notify
					end
				else
					lib.notify({description = Config.Ox_lib.no_choof, type = 'error', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
					--QBCore.Functions.Notify('You can not choof here', 'error', 7500)		--uncomment if QBCore Notify
				end
			else
				lib.notify({description = Config.Ox_lib.dead, type = 'error',position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
				--QBCore.Functions.Notify('The dead can not choof', 'error', 7500)				--uncomment if QBCore Notify
			end
		end
	end
end)

RegisterNetEvent("idrp:VapeReset", function()
	local ped = GetPlayerPed(PlayerId())
	local animdict = "anim@heists@humane_labs@finale@keycards"
	local anim = "ped_b_enter_loop"
	while (not HasAnimDictLoaded(animdict)) do
		RequestAnimDict(animdict)
	Wait(1)
	end
	TaskPlayAnim(ped, animdict, anim, 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
	lib.notify({description = Config.Ox_lib.take_hit, type = 'success', position = Config.Ox_lib.position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
	--QBCore.Functions.Notify('[E] to take a Hit [G] to stash', 'success', 9500)		----uncomment if QBCore Notify
end)

RegisterNetEvent("idrp:VapeStop", function()
	if IsPlayerAbleToVape == true then
		PlayerIsUnableToVape()
		lib.notify({description = Config.Ox_lib.stashed, type = 'success', position = Config.Ox_lib.notify_position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
		--QBCore.Functions.Notify('Stashed', 'success', 7500)				--uncomment if QBCore Notify
	else
		lib.notify({description = Config.Ox_lib.not_holding, type = 'error',position = Config.Ox_lib.notify_position, duration = Config.Ox_lib.small_duration})	--comment if ox-lib Notify
		--QBCore.Functions.Notify('You are not holding anything', 'error', 7500)				--uncomment if QBCore Notify
	end
end)

RegisterNetEvent("idrp:VapeHit", function()
	if IsPlayerAbleToVape then
		local ped = GetPlayerPed(PlayerId())
		local animdict = "amb@code_human_in_car_mp_actions@smoke@std@ds@base"
		local anim = "enter"
		if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
			while (not HasAnimDictLoaded(animdict)) do
				RequestAnimDict(animdict)
				Wait(1)
			end
			TaskPlayAnim(ped, animdict, anim, 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
			TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "vape_sfx", 1.0)
			Wait(4500)
			TriggerServerEvent("idrp:VapeEffect", PedToNet(ped))
			TriggerEvent("idrp:VapeReset", 0)
		end
	end
end)

---Cloud SFX
Vape_smoke_bone = {20279,}
Smoke_sfx = "exp_grd_bzgas_smoke"
Smoke_dict = "core"
RegisterNetEvent("idrp:VapeSmoke", function(c_ped)
	for _, bones in pairs(Vape_smoke_bone) do
		if DoesEntityExist(NetToPed(c_ped)) and not IsEntityDead(NetToPed(c_ped)) then
			Smoke = UseParticleFxAsset(Smoke_dict)
			Part = StartParticleFxLoopedOnEntityBone(Smoke_sfx, NetToPed(c_ped), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(NetToPed(c_ped), bones), Config.controls.cloud_size, false, false, false)
			Wait(Config.controls.cloud_time)
			while DoesParticleFxLoopedExist(Part) do
				StopParticleFxLooped(Part, true)
				Wait(0)
			end
			Wait(Config.controls.cloud_time*3)
			RemoveParticleFxFromEntity(NetToPed(c_ped))
			break
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local ped = GetPlayerPed(PlayerId())
		if IsPedInAnyVehicle(ped, true) then
			PlayerIsEnteringVehicle()
		end
		if IsPlayerAbleToVape then
			if IsControlPressed(0, Config.controls.use) then
				Wait(Config.controls.activate_time)
				if IsControlPressed(0, Config.controls.use) then
					TriggerEvent("idrp:VapeHit", 0)
				end
				Wait(Config.controls.calldown)
			end
			if IsControlPressed(0, Config.controls.stash) then
				Wait(Config.controls.activate_time)
				if IsControlPressed(0, Config.controls.stash) then
					TriggerEvent("idrp:VapeStop", source, 0)
				end
				Wait(1000)
			end
		end
		Wait(1)
	end
end)

function PlayerIsEnteringVehicle()
	IsPlayerAbleToVape = false
	local ped = GetPlayerPed(PlayerId())
	local animdict = "anim@heists@humane_labs@finale@keycards"
	DeleteObject(Vapemodel)
	SetModelAsNoLongerNeeded(Vapemodel)
	TaskPlayAnim(ped, animdict, "exit", 8.00, -8.00, -1, (2 + 16 + 32), 0.00, false, false, false)
end

function PlayerIsUnableToVape()
	IsPlayerAbleToVape = false
	local ped = GetPlayerPed(PlayerId())
	DeleteObject(Vapemodel)
	SetModelAsNoLongerNeeded(Vapemodel)
	--ClearPedTasksImmediately(ped)		--commented so if sitting you do not stand when putting vape away
	ClearPedSecondaryTask(ped)
end
