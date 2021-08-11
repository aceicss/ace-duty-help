--{ COPYRIGHT ACEICSS --}
--{ DO NOT REUPLOAD WITHOUT PERMISSON --}

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