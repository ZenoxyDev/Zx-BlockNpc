Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        SetVehicleDensityMultiplierThisFrame(0.0) 
        SetPedDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0) 
        SetParkedVehicleDensityMultiplierThisFrame(0.0)
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
        SetGarbageTrucks(true)
        SetRandomBoats(true)
        SetCreateRandomCops(true)
        SetCreateRandomCopsNotOnScenarios(true)
        SetCreateRandomCopsOnScenarios(true)

        local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
        ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
        RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
    end
end)