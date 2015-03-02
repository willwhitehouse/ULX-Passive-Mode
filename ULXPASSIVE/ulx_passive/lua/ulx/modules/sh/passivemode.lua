    local buildmode = 0
	local passivecost = 1000 -- Change Price Here And On Line 13 -- Set To 0 If Not On DarkRP
	
	function ulx.build( calling_ply )
		
		if buildmode == 1 then
			calling_ply:ChatPrint("You Are Already In Passive Mode Or Your Passive Mode Is Cooling Down!") -- So People Cant Go Into Passive Mode If They Already Are
	else
		if not calling_ply:Alive() then -- Prevents People From Spawning With Weapons
			calling_ply:ChatPrint("You Can Only Enter Passive Mode If You Are Alive") -- Prints In Chat They Cant Spawn With Weapons
	else
		buildmode = 1
		calling_ply:addMoney(-1000) -- Change -1000 To What Ever You Want The Cost To Be Making Sure You Leave The Minus Sign ( - ) And Change The Price On Line 2 -- Remove This Line Or Comment It If On DARKRP
		calling_ply:StripWeapons()
		calling_ply:GodEnable()
		calling_ply:Give("weapon_physgun") -- Change weapon_physgun To The Weapons/Tools You Want Your Players To Have While In Passive Mode
		calling_ply:Give("gmod_tool")
		calling_ply:Give("keys")
		calling_ply:Give("gmod_camera")
		calling_ply:ChatPrint("This Costed You: $" .. passivecost .. "!") -- Change The $ Symbol To The Currency Your Server Uses
		calling_ply:ChatPrint("You Are Now In Passive Mode")
		calling_ply:SetColor( Color( 0, 0, 0, 255 ))
		calling_ply:SetPlayerColor( Vector( 0, 0, 255 ))
	timer.Create( "Build_End", 300, 1, function() -- Change 300 (5 Minutes In Seconds) To What Ever You Want Making Sure To Leave The Comma And 1 After The Comma (https://www.google.co.uk/search?q=minutes+to+seconds&ie=utf-8&oe=utf-8&gws_rd=cr&ei=W6nzVJr-DJDOaNqigIAG)
		calling_ply:ChatPrint("You Are Back In Roleplay Mode")
		caling_ply:StripWeapons()
		caling_ply:GodDisable()
		calling_ply:Give("weapon_physgun") -- Change weapon_physgun To What Ever Gun You Want To Give Back After They Exit Passive/Build Mode ( Same As On Line 51 )
		calling_ply:Give("weapon_physcannon") -- And This
		calling_ply:Give("gmod_tool") -- And This
		calling_ply:Give("keys") -- And This
		calling_ply:Give("pocket") -- And This
		calling_ply:Give("gmod_camera") -- And This
		calling_ply:SetColor( Color( 255, 255, 255, 255 ))
		calling_ply:SetPlayerColor( Vector( 255, 255, 255 ))
			timer.Create( "CoolDown", 600, 1, function() --Change 600 (10 Minutes In Seconds) To What Ever You Want Making Sure To Leave The Comma And 1 After The Comma (https://www.google.co.uk/search?q=minutes+to+seconds&ie=utf-8&oe=utf-8&gws_rd=cr&ei=W6nzVJr-DJDOaNqigIAG)
		buildmode = 0
				end )
			end)
		end
	end
end

    local build = ulx.command( "Passive", "ulx passive", ulx.build, "!passive" )
	build:defaultAccess( ULib.ACCESS_ALL ) -- Gives All ULX Groups Access
    build:help( "Activate Passive Mode Where You Will Be In God Mode For 5 Minutes To Build Or What Ever" )

function ulx.nobuild( calling_ply )
		if buildmode == 1 then
			calling_ply:ChatPrint("You Are Back In Roleplay Mode")
				calling_ply:StripWeapons()
				calling_ply:GodDisable()
				calling_ply:Give("weapon_physgun") -- Change weapon_physgun To What Ever Gun You Want To Give Back After They Exit Passive/Build Mode ( Same As On Line 27 )
				calling_ply:Give("weapon_physcannon") -- And This
				calling_ply:Give("gmod_tool") -- And This
				calling_ply:Give("keys") -- And This
				calling_ply:Give("pocket") -- And This
				calling_ply:Give("gmod_camera") -- And This
				calling_ply:SetColor( Color( 255, 255, 255, 255 ))
				calling_ply:SetPlayerColor( Vector( 255, 255, 255 ))
			
		else
				calling_ply:ChatPrint("You Are Not In Passive Mode")
			end
				timer.Create( "CoolDown2", 600, 1, function()				-- Change This The EXACT Same As Line 36
				buildmode = 0
			end)
		end

    
     
    local nobuild = ulx.command( "Roleplay", "ulx roleplay", ulx.nobuild, "!roleplay" ) -- Only Change The Last String "!roleplay" To What Ever Command You Want
	nobuild:defaultAccess( ULib.ACCESS_ALL )
    nobuild:help( "Deactivate Passive Mode" )
 
	
	

