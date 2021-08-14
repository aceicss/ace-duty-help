--{ COPYRIGHT ACEICSS --}
--{ DO NOT REUPLOAD WITHOUT PERMISSON --}

Config = {}

--[[-----------Permissions-----------]]--
Config.OnDutyPerm 'ace-duty:OnDuty' -- If you want permissions with nodes underneath them such as ace-duty and an onduty & offduty permission under that... use a dot. "ace-duty.thisperm"
Config.OffDutyPerm 'ace-duty:OffDuty' -- Also, why do you need a perm for on and off duty? Just create a perm for using duty at all as why would you permit someone to go on duty but not back off, and vice versa?
-------------------------------------

--[[--------------Messages--------------]]--
Config.GoingOnDuty 'You Are now succesfully on duty' -- Once again, not how lua works. The fxmanifest is the only place where this declarative syntax is a thing... YOU NEEED equal signs to declare variables.
Config.ExitDuty 'You are now off duty'
--------------------------------------------
