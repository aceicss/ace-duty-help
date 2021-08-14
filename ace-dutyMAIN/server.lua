--{ COPYRIGHT ACEICSS --}
--{ DO NOT REUPLOAD WITHOUT PERMISSON --}

--[[
    I am not going to do this FOR you. You will study and put in the effort to figure this out as I did, but I will give you the hints of what you're missing right now.

    AS I HAVE EXPLAINED TO YOU BEFORE: ** THIS IS THE SERVER SIDE ** You setting a GLOBAL variable on the SERVER SIDE means that is the state of the SERVER>>>>>> not the client. The server is one thing.. across all clients
    the thing the clients are connected to. CurrentOnDuty = false... if you set that to true it is true, regardless of who does the command.. since you set it ON THE SERVER
    Also, TriggerEvent operates on the side you do it on... TriggerEvent('chat:addSuggestion') is not adding any suggestion to any clients, as this is not the client side.
    The client side functions won't work when called from the server like this. You have to trigger an event to tell code to run from the server.
    Example:
    OnDutyClients = {} -- Assign a global variable, this can act as a table that keeps track of clients who are on duty on the server side. Setting a var like onduty to true or false changes that state for EVERYONE...!
    RegisterCommand('duty', function(source,args,raw)
        if IsPlayerAceAllowed(source, Config.DutyPerm) then
            local onDutyAlready = OnDutyClients[source]
            if onDutyAlready then OnDutyClients[source] = false else OndutyClients[source] = true end
            TriggerClientEvent('ace-duty:client:toggleduty', source) -- This would be an event that toggles the player off duty, sets their loadout/uniform, sends any messages on screen, etc.. ON THE CLIENT SIDE!!!
        end
    end)

]]


Healcooldown = false
ArmourCoolDown = false
CurrentOnDuty = false

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/duty', 'Puts you on duty for your shift.', {
        {name = 'Department', help = 'Example: DPS'},
        {name = 'Call-Sign', help = 'Example: 101'}
    })
  end)

RegisterCommand("duty", function(source,args,rawCommand)
    if IsPlayerAceAllowed (Config.OnDutyPerm, source) then
        CurrentOnDuty == true -- "==" means you're comparing the two.. not an operator for setting a variable.
        DutyClient.Loadout()
        exports.mythic_notify:DoCustomHudText('inform' Config.GoingOnDuty, 7500)
    end
end)

RegisterCommand("offduty", function(source,args,rawCommand)
    if IsPlayerAceAllowed (Config.OffDutyPerm, source) then
        CurrentOnDuty == false
        DutyClient.RemoveLoadout()
        exports.mythic_notify:DoCustomHudText('success', Config.ExitDuty, 7500)
    end
end)

-- /heal --
RegisterCommand('heal', function(source, args, rawCommand)
    if Healcooldown == false then 
        notify("~g~Healed")
        SetEntityHealth(GetPlayerPed(-1), 200)
        Healcooldown = true
        Wait(300000)
        Healcooldown = false

    end

    if Healcooldown == true then
        notify("~r~ You have to wait 5 minutes since the last use of this command")
    end
end)

-- /armor --
RegisterCommand('armor', function(source, args, rawCommand)
    if ArmourCoolDown == false then
        notify("~b~60% armor applied - Wait 5 mins to apply again")
        AddArmourToPed(GetPlayerPed(-1), 60)
        ArmourCoolDown = true
        Wait(300000)
        ArmourCoolDown = false

    end
    if ArmourCoolDown == true then
        notify("~r~ You have to wait 5 minutes since the last use of this command") 
    end

end)