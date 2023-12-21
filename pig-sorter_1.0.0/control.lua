local util = require("scripts/data-util")

local function ResetTech(event)
    game.print(event.message)
    for _,force in pairs(game.forces) do
        util.debuglog("force:"..force.name)
        if not force.ai_controllable or force ~= game.forces.enemy then
            force.reset_technology_effects()
        end
    end
end

--script.on_init(ResetTech)
--script.on_configuration_changed(ResetTech)
--script.on_event(defines.events.on_console_chat, ResetTech)