ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



  
RegisterCommand("newskin", function(source, args, rawCommand)
  if args[1] ~= nil then
    TriggerClientEvent('esx_skin:openSaveableMenu', args[1])
    return
  end
  TriggerClientEvent('esx_skin:openSaveableMenu', source)
  
end, false)

