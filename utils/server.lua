
-- get netid from entity
Svr.GetNetId = function(entity)
    Citizen.Wait(100)
    local netid = NetworkGetNetworkIdFromEntity(entity)
    if netid == nil then
        lib.print.error(locale('err_entity')..entity)
    else
        if Debug then print(netid) end
        return netid
    end
end

-- get entity from netid
Svr.GetEntity = function(netid)
    Citizen.Wait(100)
    local entity = NetworkGetEntityFromNetworkId(netid)
    if entity == nil then
        lib.print.error(locale('err_entity')..netid)
    else
        if Debug then print(entity) end
        return entity
    end
end

--[[

WIP Functions

-- cron function for scheduling
Svr.Cron = function()

end



]]--