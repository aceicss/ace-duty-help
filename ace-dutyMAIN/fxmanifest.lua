--{ COPYRIGHT ACEICSS --}
--{ DO NOT REUPLOAD WITHOUT PERMISSON --}

fx_version 'cerulean'
game { 'gta5' }
author 'Aceicss#0001'
description 'Duty Command'

-- Client Scripts --
client_scripts 'client.lua'

-- Server Scripts --
server_script 'server.lua'

-- Shared Scripts --
shared_script 'config.lua'
shared_script 'functions.lua' -- The functions.lua has client only functions in it right now, so having it shared will not be helpful, it can just be a client script

-- Dependencies --
dependency 'mythic_notify'