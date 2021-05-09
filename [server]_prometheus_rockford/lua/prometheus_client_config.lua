--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_prometheus_rockford/lua/prometheus_client_config.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

--[[ Client Config ]]--

	Prometheus.WebsiteUrl = "https://icefuse.net/Store/store.php?page=packages&id=1" -- Your websites URL that will open when they click on the donation button i nthe menu, has to start with http:// or https://

	Prometheus.Notify.Header = "Icefuse Networks"

	Prometheus.Notify.BGColor = Color(33, 35, 35, 255)

	Prometheus.Notify.TitleColor = Color(193, 0, 0, 255)
	Prometheus.Notify.TitleBGColor = Color(26, 29, 29, 255)

	Prometheus.Notify.TextColor = Color(119, 119, 119, 255)

	Prometheus.Notify.CloseColor = Color(26, 29, 29, 255)
	Prometheus.Notify.CloseTextColor = Color(200, 200, 200, 255)

	Prometheus.Notify.ShowTime = 5 -- Time in seconds, how long should the notification stay on screen


	Prometheus.Menu.Header = "Icefuse Networks"

	Prometheus.Menu.BGColor = Color(33, 35, 35, 255)

	Prometheus.Menu.TabTextColor = Color(51, 204, 255, 255)
	Prometheus.Menu.TabColor = Color(0, 164, 219, 255)
	Prometheus.Menu.TabColorSelected = Color(51, 51, 51, 255)

	Prometheus.Menu.TitleColor = Color(193, 0, 0, 255)
	Prometheus.Menu.TitleBGColor = Color(26, 29, 29, 255)

	Prometheus.Menu.PackageTitleBGColor = Color(19, 21, 21, 255)
	Prometheus.Menu.PackageTitleTextColor = Color(220, 220, 220, 255)
	Prometheus.Menu.PackageBGColor = Color(26, 29, 29, 255)
	Prometheus.Menu.PackageLineBGColor1 = Color(51, 51, 51, 255)
	Prometheus.Menu.PackageLineBGColor2 = Color(26, 29, 29, 255)
	Prometheus.Menu.PackageLineTextColor = Color(230, 230, 230, 255)

	Prometheus.Menu.AdminTitleBGColor = Color(19, 21, 21, 255)
	Prometheus.Menu.AdminTitleTextColor = Color(220, 220, 220, 255)
	Prometheus.Menu.AdminBGColor = Color(26, 29, 29, 255)
	Prometheus.Menu.AdminLineBGColorError = Color(193, 0, 0)
	Prometheus.Menu.AdminLineBGColorInfo = Color(0, 102, 204)
	Prometheus.Menu.AdminLineTextColor = Color(230, 230, 230, 255)

	Prometheus.Menu.CloseColor = Color(26, 29, 29, 255)
	Prometheus.Menu.CloseHoverColor =Color(19, 21, 21, 255)
	Prometheus.Menu.CloseTextColor = Color(200, 200, 200, 255)

	Prometheus.Menu.ScrollBGColor = Color(57, 57, 57, 255)
	Prometheus.Menu.ScrollUpColor = Color(19, 21, 21, 255)
	Prometheus.Menu.ScrollDownColor = Color(19, 21, 21, 255)
	Prometheus.Menu.ScrollGripColor = Color(26, 29, 29, 255)

	Prometheus.Menu.HoverTextColor = Color(220, 220, 220, 255)
	Prometheus.Menu.HoverTextBGColor = Color(57, 57, 57, 200)

	Prometheus.Lang.Packages = "Packages"
	Prometheus.Lang.Donate = "Donate"
	Prometheus.Lang.Admin = "Admin"
	Prometheus.Lang.Package = "Bought package"
	Prometheus.Lang.ExpireDate = "Expire date"
	Prometheus.Lang.State = "State"
	Prometheus.Lang.StateActive = "Active"
	Prometheus.Lang.StateInactive = "Inactive"
	Prometheus.Lang.ExpiresNever = "Never"

	Prometheus.Lang.Text = "Text"
	Prometheus.Lang.Time = "Time"

	Prometheus.Lang.OnCooldown = "You are on cooldown to prevent spamming database activity, try again in a little bit."
	Prometheus.Lang.DBFailed = "Server has failed connecting to the database! Please contact the owner."

	Prometheus.Lang[1] = "You just rechecked your rank already."
	Prometheus.Lang[2] = "No active rank actions found."
	Prometheus.Lang[3] = "Reassigned you your latest rank."
	Prometheus.Lang[101] = "You are not allowed to do that."
		
--[[ End of Client Config ]]--
