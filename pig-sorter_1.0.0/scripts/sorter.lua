local util = require("scripts/data-util")
require("scripts/groups")
require("scripts/tables")

---------------------------------------SORTERS-----------------------------------------------------------


---Checks group list to see if recipe fits in that group.
---@param item any
---@param group string
---@return boolean
local function Sort(item, group)
    util.debuglog("PIG:GROUP:" .. group)
    for subGroupName, SubOrder in pairs(GroupSubOrder[group]) do           --GroupSubOrder.name is what to look for in recipe name GroupSubOrder.SubOrder is what order the subgroup will be in
        if item.name == subGroupName and not util.InBlacklist(item.name, group) then
            for lookat, replacewith in pairs(ReplaceSubgroupDirectName) do --if exact match to name in replace table, use that sub instead
                if item.name == lookat then
                    util.SetGroupSubOrder(item, replacewith.name, group, replacewith.order, SubOrder)
                    util.debuglog("PIG Found lookat:" .. item.name)
                    return true
                end
            end
            util.SetGroupSubOrder(item, subGroupName, group, "[a]", SubOrder)
            util.debuglog("PIG Found name:" .. item.name)
            return true
        end
        if util.find_string_plain(item.name, subGroupName) then
            for find, order in pairs(GroupItemOrder[group]) do
                if util.find_string_plain(item.name, find) and not util.InBlacklist(item.name, group) and find ~= subGroupName then
                    for lookat, replacewith in pairs(ReplaceSubgroup) do --checks table to see if the key contains pattern of both name and find, if so replace sub with value
                        if util.find_string_plain(lookat, subGroupName) and util.find_string_plain(lookat, find) then
                            util.debuglog("PIG:found:name:" ..
                                item.name ..
                                ":subname:" .. subGroupName .. ":group:" .. group .. ":order:" ..
                                order .. ":sub:" .. SubOrder .. ":find:" .. find)
                            util.SetGroupSubOrder(item, replacewith, group, order, SubOrder)
                            return true
                        end
                    end
                end
                if util.find_string_plain(item.name, find) and not util.InBlacklist(item.name, group) and find ~= subGroupName then
                    util.debuglog("PIG:found:recipe:" ..
                        item.name .. ":subname:" ..
                        subGroupName ..
                        ":group:" .. group .. ":order:" .. order .. ":sub:" .. SubOrder .. ":find:" .. find)
                    util.SetGroupSubOrder(item, subGroupName, group, order, SubOrder)
                    return true
                end
            end
        end
    end
end

local function SortCheck(item)
    local found = false
    util.debuglog("PIG:recipe:" .. item.name)
    --if recipe name matches what we are looking for
    if not util.SortDirectly(item) then
        for _, Group in pairs(GroupSortOrder) do
            if Sort(item, Group) then
                found = true
                util.debuglog("PIG:found:" .. item.name)
                break
            end
        end
    else
        found = true
    end
    if not found then util.SetGroupSubOrder(item, "extra", "extra", "a", "a") end
end

local protonames =
{ "item-with-entity-data", "repair-tool", "rail-planner", "spidertron-remote", "blueprint-book",
    "blueprint", "deconstruction-item", "upgrade-item", "item", "module", "tool", "ammo", "capsule", "gun", "armor", }

---Checks to see if recipe with string in name is in group and subgroup and sets if not
local function ChangeSubgroupAndGroup()
    if settings.startup["pig-enable-sorting"].value == true then
        for _, proto in pairs(protonames) do
            for _, item in pairs(data.raw[proto]) do
                SortCheck(item)
            end
        end
        for _, recipe in pairs(data.raw.recipe) do
            SortCheck(recipe)
        end
    end
end

ChangeSubgroupAndGroup()
