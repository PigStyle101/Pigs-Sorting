local data_util = {}
local debug = true
data_util.mod_name = "all-the-overhaul-modpack"
data_util.mod_path = "__" .. data_util.mod_name .. "__"
data_util.str_gsub = string.gsub

---Checks to see if table contains value
---@param table table #Table to check
---@param check any #What to check for
function data_util.table_contains(table, check)
  for k, v in pairs(table) do if v == check then return true end end
  return false
end

---Checks to see if table contains value
---@param table table #Table to check
---@param check any #What to check for
function data_util.subgroup_table_contains_name(table, check)
  for k, v in pairs(table) do if v.name == check then return true end end
  return false
end

---Check s for pattern considering all charectors to be plain
---@param s string
---@param pattern string
---@return boolean
function data_util.find_string_plain(s, pattern)
  if string.find(string.lower(s), string.lower(pattern), 1, true) then return true end
  return false
end

function data_util.placableAsEntity(check)
  if check.type == "item" then
    if check.place_result then
      return true
    end
  end
  return false
end

function data_util.placableAsTile(check)
  if check.type == "tile" then
    if check.place_as_tile then
      return true
    end
  end
  return false
end

function data_util.rocketLaunchProduct(check)
  if check.type == "item" then
    if check.rocket_launch_product then
      data_util.debuglog("RocketLaunch:True")
      return true
    end
    data_util.debuglog("RocketLaunch:False2")
  end
  data_util.debuglog("RocketLaunch:False1")
  return false
end

function data_util.emissions(check)
  if check.energy_source then
    if check.energy_source.emissions_per_minute then
      data_util.debuglog("Emissions:True")
      return true
    end
    data_util.debuglog("Emissions:False2")
  end
  data_util.debuglog("Emissions:False1")
  return false
end

---Prints to log if toggle is on
---@param message string
function data_util.debuglog(message)
  if debug then
    log(message)
  end
end

-- Puts sub-icon in the top-left of the main icon
-- If multiple sub-icons, they will all overlap if not given a new shift value
function data_util.sub_icons(icon_main, ...)
  local icons_sub = { ... }
  local results = { { icon = icon_main, shift = { 2, 0 }, icon_size = 64 } }
  for _, icon in pairs(icons_sub) do
    table.insert(results, {
      icon = icon.icon or icon,
      scale = icon.scale or 0.25,
      shift = icon.shift or { -7, -7 },
      icon_size = 64
    })
  end
  return results
end

function data_util.tint_recursive(subject, tint)
  if not subject then return end
  if subject.filename then
    subject.tint = tint
  end
  for _, sub in pairs(subject) do
    if (type(sub) == "table") then
      data_util.tint_recursive(sub, tint)
    end
  end
end

function data_util.PrintAllRecipesToLog()
  for _, recipe in pairs(data.raw.recipe) do
    if (recipe.subgroup ~= nil and not data_util.table_contains(SubGroups, recipe.subgroup)) then
      table.insert(SubGroups, recipe.group)
      log(recipe.name)
      log(recipe.group)
      log(recipe.subgroup)
      log(recipe.subgroup.group)
      log(recipe.order)
    end
  end
end

function data_util.PrintAllItemsToLog()
  for _, item in pairs(data.raw['item']) do
    log(item.name)
  end
end

function data_util.PrintAllSubGroupsToLog()
  for _, g in pairs(data.raw["item-subgroup"]) do
    log(g.name)
    log(g.group)
    log(g.order)
  end
end

function data_util.CheckNames(name)
  for _, recipe in pairs(data.raw.recipe) do
    if string.find(recipe.name, name) then
      log(recipe.name)
    end
  end
end

---Checks if SortDirectlyTable contains the recipe.
---@param item any
---@return boolean
function data_util.SortDirectly(item)
  local contains = false
  for name, subgroup in pairs(SortDirectTable) do
    if (item.name == name) then
      data_util.debuglog(subgroup.name)
      data_util.debuglog(subgroup.order)
      item.subgroup = subgroup.name
      item.order = subgroup.order
      contains = true
      goto continue
    else
      contains = false
    end
  end
  ::continue::
  data_util.debuglog("PIG:DirectSort:" .. tostring(contains) .. ":name:" .. item.name)
  return contains
end

---Checks Blacklist of what group we are on.
---@param name string
---@param group string
---@return boolean
function data_util.InBlacklist(name, group)
  for _, value in pairs(GroupBlacklist[group]) do
    if (data_util.find_string_plain(name, value)) then
      data_util.debuglog("PIG:Blacklist:Found:" .. value)
      return true
    end
  end
end

---Checks if there is subgroup and set group as parent, if none make one and set its parent to group
---@param name string # what to check for
---@param group string # what group to add if there is none
function data_util.CreateSubGroupIfNone(name, group, Sorder)
  if not data_util.subgroup_table_contains_name(data.raw["item-subgroup"], name) then
    data:extend({
      {
        type = "item-subgroup",
        name = name,
        group = group,
        order = Sorder
      }
    })
    data_util.debuglog("PIG:Group:" .. group .. ",Subgroup:" .. name)
  else
    --set subgroup to group.
    data.raw["item-subgroup"][name].group = group
    data.raw["item-subgroup"][name].order = Sorder
  end
end

---Removes recipie unlocks from a specifice tech
---@param tech_effects effects #Tech to remove from
---@param recipe_name string #Recipe to remove
function data_util.remove_recipe_from_effects(tech_effects, recipe_name)
  local index = 0
  for _, _item in ipairs(tech_effects) do
    if _item.type == "unlock-recipe" and _item.recipe == recipe_name then
      index = _
      break
    end
  end
  if index > 0 then
    table.remove(tech_effects, index)
  end
end

---Sets the recipe subgroup name and then group as parent. optional: sets order
---@param item any #recipe name
---@param subgroup string #subgroup name
---@param group string #group name
---@param Iorder string #recipe order
---@param Sorder string #sub order
function data_util.SetGroupSubOrder(item, subgroup, group, Iorder, Sorder)
  data_util.CreateSubGroupIfNone(subgroup, group, Sorder)
  item.subgroup = subgroup
  if Iorder then
    item.order = Iorder
  end
end

local function find_and_replace_ingredients_sub(ingredients, replacements)
  for _, ingredient in pairs(ingredients) do
    for from, to in pairs(replacements) do
      if ingredient.name == from then
        ingredient.name = to
      elseif ingredient[1] == from then
        ingredient[1] = to
      end
    end
  end
end

-- Input: {["replace-from"] = "replace-to"}
function data_util.find_and_replace_ingredients(replacements)
  for _, recipe in pairs(data.raw.recipe) do
    if recipe.ingredients then find_and_replace_ingredients_sub(recipe.ingredients, replacements) end
    if recipe.normal and recipe.normal.ingredients then
      find_and_replace_ingredients_sub(recipe.normal.ingredients,
        replacements)
    end
    if recipe.expensive and recipe.expensive.ingredients then
      find_and_replace_ingredients_sub(
        recipe.expensive.ingredients, replacements)
    end
  end
end

function data_util.find_and_replace_tech(from, to)
  data_util.debuglog("Starting FART search")
  for _, tech in pairs(data.raw.technology) do
    if tech.effects then
      for _, effect in pairs(tech.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == from then
          data_util.debuglog("Found " .. from .. " in recipe " .. tech.name)
          data_util.remove_recipe_from_effects(tech.effects, from)
          table.insert(tech.effects, { type = "unlock-recipe", recipe = to })
        end
      end
    end
  end
end

-- Input: {["replace-from"] = "replace-to"}
function data_util.create_and_replace_recipe(replacements)
  for from, to in pairs(replacements) do
    local new = table.deepcopy(data.raw.recipe[from])
    new.name = to
    data:extend({ new })
    data_util.find_and_replace_tech(from, to)
    data_util.replace_on_modules(from, to)
    data.raw.recipe[from] = nil
  end
end

function data_util.replace_on_modules(from, to)
  for _, mod in pairs(data.raw.module) do
    data_util.debuglog("Mod:" .. mod.name)
    if mod.limitation then
      data_util.debuglog("Limit:true")
      for key, lim in pairs(mod.limitation) do
        data_util.debuglog("Limit:" .. lim)
        if from == lim then
          data_util.debuglog("lim=from")
          data_util.debuglog("From:" .. from)
          mod.limitation[key] = to
        end
      end
    end
  end
end

return data_util
