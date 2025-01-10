
-- disable weapon drop
function RemoveWeaponDrops()
	RemoveAllPickupsOfType(14)
end

Citizen.CreateThread(function()
    while Shared.options.drop do
        Citizen.Wait(0)
        RemoveWeaponDrops();
    end
end)

-- disable dispatch
Citizen.CreateThread(function()
	while not Shared.options.dispatch do
		Wait(500)
		for i = 1, 12 do
			EnableDispatchService(i, false)
		end
		ClearAreaOfCops(0.0, 0.0, 0.0, 10000.0, true)
	end
end)

-- radio / hud / reticle / water
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if not Shared.options.radios then
			local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
			SetVehicleRadioEnabled(vehicle, false)
		end
		if not Shared.options.hud then
			HideHudComponentThisFrame(2)
			HideHudComponentThisFrame(3)
			HideHudComponentThisFrame(4)
			HideHudComponentThisFrame(6)
			HideHudComponentThisFrame(7)
			HideHudComponentThisFrame(8)
			HideHudComponentThisFrame(9)
		end
		if not Shared.options.reticle then
			HideHudComponentThisFrame(14)
		end
		if Shared.options.water.active then
			WaterOverrideSetStrength(Shared.options.water.value)
		end
	end
end)