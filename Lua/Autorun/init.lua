

NTPC = {}
NTPC.Name = "Neurotrauma Proto-Cybernetics"
NTPC.Version = "0.0.1"
NTPC.VersionNum = 00000001
NTPC.Path = table.pack(...)[1]

if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then
	Timer.Wait(function()
        if NT == nil then 
            print("Error loading NT Proto-Cybernetics: It Neurotrauma isn't loaded!")
			Game.SendMessage(
				"Error loading NT Proto-Cybernetics: It Neurotrauma isn't loaded!!",
				ChatMessageType.Server
			)
            return
        end

        dofile(NTPC.Path .. "Lua/Scripts/humanupdate.lua")
        dofile(NTPC.Path .. "Lua/Scripts/Items.lua")
        dofile(NTPC.Path .. "Lua/Scripts/ondamaged.lua")
        dofile(NTPC.Path .. "Lua/Scripts/helperfunctionS.lua")
    end, 1)