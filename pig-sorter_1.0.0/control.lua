local util = require("scripts/data-util")

local function ResetTech(event)
    game.print(event.message)
    for _,force in pairs(game.forces) do
        util.debuglog("force:"..force.name)
        if not force.ai_controllable or force ~= game.forces.enemy then
            for _, tech in pairs(force.technologies) do
                util.debuglog("found tech:"..tech.name)
                if tech.researched == true then
                    for _, effect in pairs(tech.effects) do
                        effect.recipe.enabled = false
                        force.recipes[effect.recipe].enabled = false
                        util.debuglog("disabling recipe:"..effect.recipe)
                    end
                    util.debuglog("reseting tech:"..tech.name)
                    tech.researched = false
                    tech.researched = true
                end
            end
        end
    end
end

--script.on_init(ResetTech())
--script.on_configuration_changed(ResetTech())
--script.on_event(defines.events.on_console_chat, ResetTech)