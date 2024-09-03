
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