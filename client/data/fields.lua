
-- variables
local anim = {
    collect = { dict= 'random@domestic', clip = 'pickup_low' }
}

local way = false

-- functions
local ensurecoords = function(objcd, space, obj, list)
    if obj > 0 then local ensured = true

        for k, v in pairs(list) do
            if #(objcd - GetEntityCoords(v)) < 5 then
                ensured = false
            end
        end

        if #(objcd - space) > 50 then
            ensured = false
        end

        return ensured
    else
        return true
    end
end


local createfield = function(space, obj, list)
    while true do
        Wait(250)
        local cx, cy, cz

        local mx = math.random(-15, 15)

        local my = math.random(-15, 15)

        cx = space+mx
        cy = space+my
        cz = space.z

        local cd = vector3(cx, cy, cz)

        if ensurecoords(cd, space, obj, list) then
            return cd
        end
    end
end

-- thread
Citizen.CreateThread(function()
    while Shared.Fields do
        local cooldown = 1000
        for k, v in ipairs(Data.Fields) do
            if #(GetEntityCoords(cache.ped) - v.loc) < 50 then
                cooldown = 500
                if v.spawned.obj < 15 and not way then
                    way = true
                    while v.spawned.obj < 15 do
                        Citizen.Wait(50)
                        v.spawned.loc = createfield(v.loc, v.spawned.obj, v.spawned.loc)
                        v.spawned.obj = lib.callback('mi:create:object', false,
                        function() end, v.spawned.loc, v.model)
                    end
                    way = false
                end
            end
        end
        Citizen.Wait(cooldown)
    end
end)

-- event handlers
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        -- delete fields
    end
end)