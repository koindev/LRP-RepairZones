Citizen.CreateThread(function()
    for i = 1, #Config.RepairZone do
        local coords = vector3(Config.RepairZone[i].x, Config.RepairZone[i].y, Config.RepairZone[i].z)
		local blip = AddBlipForCoord(coords)
		SetBlipSprite (blip, 402)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 1.2)
		SetBlipColour (blip, 39)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentString(Config.BlipLabel)
		EndTextCommandSetBlipName(blip)
	end
end)