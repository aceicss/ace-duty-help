--{ COPYRIGHT ACEICSS --}
--{ DO NOT REUPLOAD WITHOUT PERMISSON --}

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
        CurrentOnDuty == true
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