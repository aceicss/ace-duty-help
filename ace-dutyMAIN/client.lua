--{ COPYRIGHT ACEICSS --}
--{ DO NOT REUPLOAD WITHOUT PERMISSON --}

-- First off ... DutyClient must be defined ( DutyClient = {} ) before you can assign items within it such as DutyClient.Loadout.
-- ** THIS IS THE CLIENT SIDE ** THIS RUNS SEPARATELY ON EACH PLAYER!! YOU CAN DO THINGS HERE SUCH AS SET AN 'onduty' variable TO TRUE OR FALSE DEPENDING ON IF THEY'RE ON DUTY! << NOT >> on the server side
-- I'm not sure what the point of the below code is, but it will not work, as you've made a table for some reason (without the correct syntax of TableName = { item1, item2, ... })
-- I think you are entirely confused on the syntax of lua functions and tables. A function is function(arg1,arg2,... ) .. stuff here .. end; A table is tableName = { items ... }

DutyClient.Loadout {
    GiveWeaponToPed(PlayerPedId(), GetHashKey("weapon_fireextinguisher"), 999, false, false)
    GiveWeaponToPed(PlayerPedId(), GetHashKey("weapon_stungun"), 999, false, false)
    GiveWeaponToPed(PlayerPedId(), GetHashKey("weapon_combatpistol"), 999, false, false)
    GiveWeaponComponentToPed(PlayerPedId(), GetHashKey("weapon_combatpistol"), GetHashKey("COMPONENT_AT_PI_FLSH"))
    GiveWeaponToPed(PlayerPedId(), GetHashKey("weapon_pumpshotgun"), 999, false, false)
    GiveWeaponComponentToPed(PlayerPedId(), GetHashKey("weapon_pumpshotgun"), GetHashKey("COMPONENT_AT_AR_FLSH"))
    GiveWeaponToPed(PlayerPedId(), GetHashKey("weapon_carbinerifle"), 999, false, false)
    GiveWeaponComponentToPed(PlayerPedId(), GetHashKey("weapon_carbinerifle"), GetHashKey("COMPONENT_AT_AR_FLSH"))
    GiveWeaponComponentToPed(PlayerPedId(), GetHashKey("weapon_carbinerifle"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
    GiveWeaponComponentToPed(PlayerPedId(), GetHashKey("weapon_carbinerifle"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
}

DutyClient.DutyPed {
    "s_m_y_cop_01"
}

DutyClient.Departments {
    "DPS",
    "SAFD",
    "FAA",
    "Staff",
    "G6",
    "PUB"
}

DutyClient.RemoveLoadout {
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
}