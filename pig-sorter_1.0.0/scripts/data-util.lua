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
function data_util.find_string_plain(s,pattern)
if string.find(string.lower(s),string.lower(pattern),1,true) then return true end
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

return data_util
