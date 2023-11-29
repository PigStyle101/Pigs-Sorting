local util = require("scripts/data-util")
require("scripts/groups")
require("scripts/tables")

--smelting

---Checks if SortDirectlyTable contains the recipe.
---@param item any
---@return boolean
local function SortDirectly(item)
    local contains = false
    for name, subgroup in pairs(SortDirectTable) do
        if (item.name == name) then
            util.debuglog(subgroup.name)
            util.debuglog(subgroup.order)
            item.subgroup = subgroup.name
            item.order = subgroup.order
            contains = true
            goto continue
        else
            contains = false
        end
    end
    ::continue::
    util.debuglog("PIG:DirectSort:" .. tostring(contains) .. ":name:" .. item.name)
    return contains
end

---Checks Blacklist of what group we are on.
---@param name string
---@param group string
---@return boolean
local function InBlacklist(name, group)
    for _, value in pairs(GroupBlacklist[group]) do
        if (util.find_string_plain(name, value)) then
            util.debuglog("PIG:Blacklist:Found:" .. value)
            return true
        end
    end
end

---Checks if there is subgroup and set group as parent, if none make one and set its parent to group
---@param name string # what to check for
---@param group string # what group to add if there is none
local function CreateSubGroupIfNone(name, group, Sorder)
    if not util.subgroup_table_contains_name(data.raw["item-subgroup"], name) then
        data:extend({
            {
                type = "item-subgroup",
                name = name,
                group = group,
                order = Sorder
            }
        })
        util.debuglog("PIG:Group:" .. group .. ",Subgroup:" .. name)
    else
        --set subgroup to group.
        data.raw["item-subgroup"][name].group = group
        data.raw["item-subgroup"][name].order = Sorder
    end
end

---Sets the recipe subgroup name and then group as parent. optional: sets order
---@param item any #recipe name
---@param subgroup string #subgroup name
---@param group string #group name
---@param Iorder string #recipe order
---@param Sorder string #sub order
local function SetGroupSubOrder(item, subgroup, group, Iorder, Sorder)
    CreateSubGroupIfNone(subgroup, group, Sorder)
    item.subgroup = subgroup
    if Iorder then
        item.order = Iorder
    end
end


---------------------------------------SORTERS-----------------------------------------------------------


---Checks group list to see if recipe fits in that group.
---@param item any
---@param group string
---@return boolean
local function Sort(item, group)
    util.debuglog("PIG:GROUP:" .. group)
    for name, SubOrder in pairs(GroupSubOrder[group]) do --GroupSubOrder.name is what to look for in recipe name GroupSubOrder.SubOrder is what order the subgroup will be in
        if item.name == name and not InBlacklist(item.name, group) then
            util.debuglog("PIG name Found " .. item.name)
            for lookat, replacewith in pairs(ReplaceSubgroupDirectName) do --if exact match to name in replace table, use that sub instead
                if item.name == lookat then
                    SetGroupSubOrder(item, replacewith.name, group, replacewith.order, SubOrder)
                    util.debuglog("PIG Found lookat:" .. item.name)
                    return true
                end
            end
            SetGroupSubOrder(item, name, group, "[a]", SubOrder)
            util.debuglog("PIG Found name:" .. item.name)
            return true
        end
        if util.find_string_plain(item.name, name) then
            for find, order in pairs(GroupItemOrder[group]) do
                if util.find_string_plain(item.name, find) and not InBlacklist(item.name, group) then
                    for lookat, replacewith in pairs(ReplaceSubgroup) do --checks table to see if the key contains pattern of both name and find, if so replace sub with value
                        if util.find_string_plain(lookat, name) and util.find_string_plain(lookat, find) then
                            util.debuglog("PIG:found:name:" ..
                                item.name ..
                                ":name:" .. name .. ":group:" .. group .. ":order:" ..
                                order .. ":sub:" .. SubOrder .. ":find:" .. find)
                            SetGroupSubOrder(item, replacewith, group, order, SubOrder)
                            return true
                        end
                    end
                end
                if util.find_string_plain(item.name, find) and not InBlacklist(item.name, group) then
                    util.debuglog("PIG:found:recipe:" ..
                        item.name .. ":name:" ..
                        name .. ":group:" .. group .. ":order:" .. order .. ":sub:" .. SubOrder .. ":find:" .. find)
                    SetGroupSubOrder(item, name, group, order, SubOrder)
                    return true
                end
            end
        end
    end
end

---Checks to see if recipe with string in name is in group and subgroup and sets if not
local function ChangeSubgroupAndGroup()
    
    for _, item in pairs(data.raw.item) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw["item-with-entity-data"]) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw.module) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw.tool) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw.ammo) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw.capsule) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw["repair-tool"]) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw.gun) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw.armor) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    for _, item in pairs(data.raw["rail-planner"]) do
        local found = false
        util.debuglog("PIG:recipe:" .. item.name)
        --if recipe name matches what we are looking for
        if not SortDirectly(item) then
            for _, Group in pairs(GroupSortOrder) do
                if Sort(item, Group) then found = true util.debuglog("PIG:found:" .. item.name) break end
            end
        end
        if not found then SetGroupSubOrder(item,"extra","extra","a","a") end
    end
    
end

ChangeSubgroupAndGroup()
