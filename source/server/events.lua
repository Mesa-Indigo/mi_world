
RegisterNetEvent('miwd:s:load:vendors')
AddEventHandler('miwd:s:load:vendors', function()
    TriggerClientEvent('miwd:c:load:vendors', -1)
end)