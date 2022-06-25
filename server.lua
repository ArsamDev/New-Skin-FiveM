ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



  
RegisterCommand("newskin", function(source, args, rawCommand)
  if args[1] ~= nil then
    local xPlayers = ESX.GetPlayerFromId(source)
    if xPlayers.getGroup() ~= "user" then
      TriggerClientEvent('esx_skin:openSaveableMenu', args[1])
    end
    return
  end
  local xPlayer = ESX.GetPlayerFromId(source)
  if xPlayer.getGroup() ~= "user" then
    TriggerClientEvent('esx_skin:openSaveableMenu', source)
  end
  
  
end, false)

