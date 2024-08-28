
-- single ghost object
local ghost = { obj = nil, spawned = false }

-- different object models
local forms = {
    'm23_1_prop_m31_ghostsalton_01a', 'm23_1_prop_m31_ghostrurmeth_01a',
    'm24_1_prop_m41_ghost_dom_01a', 'm23_1_prop_m31_ghostjohnny_01a',
    'm24_1_prop_m41_ghost_cop_01a', 'm23_1_prop_m31_ghostskidrow_01a'
}

-- different locations to spawn
local points = {
    [1] = vec3(211.030, -927.111, 54.709),      -- top of art structure, legion square
    [2] = vec3(-384.800, -2326.782, 69.137),    -- wire ledge, la puerta frwy
    [3] = vec3(239.573, -1380.622, 50.084),     -- coroner's roof, south ls
    [4] = vec3(-1106.807, -1623.427, 4.398),    -- end alleyway, vespucci beach
    [5] = vec3(-1638.372, 220.146, 61.210),     -- campus fountain, richman
    [6] = vec3(-429.565, 1108.763, 335.108),    -- observatory roof, north ls
    [7] = vec3(316.615, 264.029, 104.561),      -- alley behind bank, vinewood
    [8] = vec3(1090.101, -649.998, 55.304),     -- lake center, mirror park
    [9] = vec3(785.674, -2250.864, 34.690),     -- popular st roof, east ls 
    [10] = vec3(-212.142, -2377.339, 17.332),   -- ss bulker, ls port
    [11] = vec3(1695.526, 2528.871, 54.877),    -- guard tower, prison
    [12] = vec3(1597.139, 3599.913, 42.116),    -- torn hotel, sandy shores
    [13] = vec3(2456.718, 4972.522, 51.567),    -- farm, grapeseed
    [14] = vec3(-218.699, 6125.791, 50.801),    -- water tower, paleto bay
}

local choice = function(list)
    local result = list[math.random(1, #list)]
    return result
end

Citizen.CreateThread(function()
    while true do
        local time = Cnt.GetWorldTime()
        if time.hour >= 1 and time.hour <= 4 and not ghost.spawned then
            if not DoesEntityExist(ghost.obj) then
                local form, point, head = choice(forms),
                choice(points), math.random(1, 360)
                Cnt.Create_Prop(ghost.obj, form, point, head, false)
                ghost.spawned = true
                if Debug then
                    lib.print.info('Ghost Sighting: '..point)
                end
            end
        else
            Cnt.Delete(ghost.obj)
        end
        Citizen.Wait(60000)
    end
end)