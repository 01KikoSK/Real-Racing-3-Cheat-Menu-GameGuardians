-- Real Racing 3 Cheat Menu Lua Script
-- Created by: MarioRossi93i
-- Version: 1.0
-- Last Updated: March 14, 2024

-- Variables
local RR3 = {
    -- Currencies
    R$ = 0,
    gold = 0,
    M$ = 0,
    -- Car
    carId = 1,
    carVIP = false,
    -- Endurance
    enduranceHack = false,
}

local gameVariables = {
    {'R$', 'float'},
    {'gold', 'float'},
    {'M$', 'float'},
    {'curCarId', 'int'},
    {'curCarVIP', 'int'},
    {'enduranceHack', 'int'},
}

-- Initializes the values
function RR3.init()
    for _, variable in ipairs(gameVariables) do
        local address, value = GameGuardian.findText(variable[1])
        if (address) then
            RR3[variable[1]] = tonumber(value)
            print('Variable "' .. variable[1] .. '" assigned to ' .. RR3[variable[1]])
        else
            print("Error while trying to find |" .. variable[1] .. "|")
        end
    end
end

-- Main
function MAIN()
    RR3.init()
    while (true) do
        -- Add cheat menu options here
    end
end