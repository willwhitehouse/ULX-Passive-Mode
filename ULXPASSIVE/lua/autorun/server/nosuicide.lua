function NoSuicide( ply )
     ply:PrintMessage( HUD_PRINTTALK, "You Are Unable To Suicide")
    return false
end
hook.Add( "CanPlayerSuicide", "Suicide", NoSuicide )
 
 
-- Part Of ULX_PASSIVE Module So Players Cant Kill Themselves To Get Their Weapons Back