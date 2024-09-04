
RegisterCommand('driver', function()
    local spawns = {
        start = vec4(-1287.808, -1397.259, 4.593, 286.725),
        ending = {
            [1] = vec4(-1238.449, -1382.149, 4.072, 289.79),
            [2] = vec4(-1240.685, -1397.483, 4.167, 212.359),
            [3] = vec4(-1273.284, -1338.175, 4.230, 18.916),
        }
    }
    local mph = 20.0
    local flag, car = 524308, lib.requestModel('rhinehart')
    local st, en = spawns.start, spawns.ending
    local model = lib.requestModel('a_f_y_eastsa_03')

    local dest = spawns.ending[math.random(1, #spawns.ending)]
    local vehicle = CreateVehicle(car, st.x, st.y, st.z, st.w, true, false)
    local ped = CreatePedInsideVehicle(vehicle, 1, model, -1, true, false)

    TaskVehicleDriveToCoord(ped, vehicle, dest.x, dest.y, dest.z, mph, 4,
    GetHashKey(car), flag, 2.0, 1)

end, false)

--[[
    wander
RegisterCommand('stockd', function()
    local spawns = {
        start = vec4(451.488, -933.748, 28.523, 176.58),
        ending = {
            [1] = vec4(-1238.449, -1382.149, 4.072, 289.79),
            [2] = vec4(-1240.685, -1397.483, 4.167, 212.359),
            [3] = vec4(-1273.284, -1338.175, 4.230, 18.916),
        }
    }
    local mph = 20.0
    local flag, car = 524308, lib.requestModel('stockade')
    local st, en = spawns.start, spawns.ending
    local model = lib.requestModel('mp_s_m_armoured_01')

    local dest = spawns.ending[math.random(1, #spawns.ending)]
    local vehicle = CreateVehicle(car, st.x, st.y, st.z, st.w, true, false)
    local ped = CreatePedInsideVehicle(vehicle, 1, model, -1, true, false)

    TaskVehicleDriveWander(ped, vehicle, 10.0, 447)

end, false)
]]

local stkd = {
    prp_sawbd = 'prop_tool_consaw',
    plt_money = 'vw_prop_vw_crate_02a',
    plt_empty = 'hei_prop_cash_crate_empty'
}

local prepveh = function(vehicle)
    -- open doors
    for i = 2, 3 do
        SetVehicleDoorOpen(vehicle, i, false, false)
    end Wait(1000)
    FreezeEntityPosition(vehicle, true)
    -- load object

end

local getstuff = function(vehicle)
    if lib.progressBar({
        duration = 5000,
        label = 'Cutting Doors',
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            dict = 'anim@heists@fleeca_bank@drilling',
            clip = 'drill_straight_end'
        },
        prop = {
            bone = 28422,
            model = stkd.prp_sawbd,
            pos = vec3(0.0, 0.09, 0.05),
            rot = vec3(0.0, 0.0, 90.0),
            blendIn = 3.0, blendOut = 3.0,
        },
    })
    then
        print('Do stuff when complete')
        prepveh(vehicle)
    else
        print('Do stuff when cancelled')
    end
end

--if not IsVehicleStopped(vehicle) then return end

local checkvehicle = function(vehicle)
    local burst
    local tires1 = { 0, 1, 4, 5, 2, 3, 45, 47 }
    for _,check in pairs(tires1) do
        burst = IsVehicleTyreBurst(vehicle, check, false)
        if burst == true then
            return true
        else
            return false
        end
    end
end

local setped = function(ped, vehicle)
    SetVehicleEngineOn(vehicle, false, true, true)
    Wait(2000)
    TaskLeaveVehicle(ped, vehicle, 1)

    SetPedRelationshipGroupHash(ped, 'HATES_PLAYER')
    SetRelationshipBetweenGroups(5, 'HATES_PLAYER', 'PLAYER')
    --attacks on sight
    GiveWeaponToPed(ped, GetHashKey('WEAPON_COMBATPISTOL'), 60, false, true)
    SetCurrentPedWeapon(ped, GetHashKey('WEAPON_COMBATPISTOL'), true)
    SetPedAccuracy(ped, math.random(20, 50))
    SetPedCombatRange(ped, 2)
    SetPedAsEnemy(ped, true)
end

--[[    reference for roaming stockade
    RegisterCommand('stockd', function()

    -- set models
    local st = vec4(1142.521, -3274.715, 5.900, 230.111)
    local car, model = lib.requestModel('stockade'), lib.requestModel('mp_s_m_armoured_01')

    -- spawn ped / vehicle
    local vehicle = CreateVehicle(car, st.x, st.y, st.z, st.w, true, false)
    local ped = CreatePedInsideVehicle(vehicle, 1, model, -1, true, false)

    TaskVehicleDriveWander(ped, vehicle, 5.0, 447)

    while not checkvehicle(vehicle) do
        if not IsVehicleStopped(vehicle) then
            return
        else
            break end
        Wait(1000)
    end

    local burst

    while not burst do
        local tires1 = { 0, 1, 4, 5, 2, 3, 45, 47 }
        for _,check in pairs(tires1) do
            burst = IsVehicleTyreBurst(vehicle, check, false)
            return burst
        end
        Wait(1000)
    end

    setped(ped, vehicle)

    -- set target
    local ofst = GetOffsetFromEntityInWorldCoords(vehicle, -0.01, -3.4, 1.05)
    local zone = Target:addSphereZone({
        name = "stocket",
        coords = vec3(ofst.x, ofst.y, ofst.z),
        radius = 0.5, debug = true, options = {
            {
                label = 'Saw Open Doors', name = 'sawdoor',
                icon = 'fa-solid fa-fan',
                canInteract = function(_, distance)
                    return distance < 1.2
                end,
                onSelect = function(data)
                    data.entity = vehicle
                    lib.print.info('did a crime')
                    TaskTurnPedToFaceEntity(cache.ped, vehicle, 2000)
                    Wait(1000)
                    SetEntityHeading(cache.ped, GetEntityHeading(vehicle))
                    SetEntityCoords(cache.ped, ofst.x-0.7, ofst.y+0.9, ofst.z-1.8, true, false, false, false)
                    getstuff(vehicle)
                end
            }
        }
    })

end, false)
]]