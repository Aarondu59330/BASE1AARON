
local spawn1 = false							-- Variable, um zu überprüfen, ob Sie bereits erscheinen

AddEventHandler("playerSpawned", function () 	-- Warten Sie, bis der Spieler erscheint
	if not spawn1 then
		ShutdownLoadingScreenNui()				-- Schließen Sie die Ladebildschirmressource
		spawn1 = true
	end
end)