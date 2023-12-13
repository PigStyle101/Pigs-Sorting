--------NEED TO GO THROUGH AND DOUBLE CHECK EVERYTHING-----------------

--item-logistics
local ItemLogisticsBlacklist = { "equipment", "companion", "substrate","minibuffer","tank" }
local ItemLogisticsSubOrder =
{
    ["logistic"] = "[a]",
    ["underground"] = "[f]",
    ["floating"] = "[j]",
    ["belt"] = "[e]",
    ["splitter"] = "[g]",
    ["loader"] = "[h]",
    ["inserter"] = "[i]",
    ["chest"] = "[a]",
    ["strongbox"] = "[b]",
    ["storehouse"] = "[c]",
    ["warehouse"] = "[d]",
    ["roboport"] = "[n]",
    ["robot"] = "[n]",
}
local ItemLogisticsItemOrder =
{
    ["steel"] = "[a]",
    ["iron"] = "[i]",
    ["wood"] = "[h]",
    ["passive"] = "[c]",
    ["active"] = "[f]",
    ["buffer"] = "[d]",
    ["requester"] = "[e]",
    ["small"] = "[b]",
    ["space"] = "[z]",
    ["fast"] = "[c]",
    ["express"] = "[d]",
    ["advanced"] = "[e]",
    ["superior"] = "[z]",
    ["burner"] = "[a]",
    ["filter"] = "[d]",
    ["stack"] = "[e]",
    ["construction"] = "[g]",
    ["logistic"] = "[g]",
    ["large"] = "[c]",
    ["charger"] = "[a]",
    ["long"] = "[b]",
    ["aai"] = "[a]",
    ["chest"] = "[a]",
    ["belt"] = "[a]",
    ["transport"] = "[a]",
    ["inserter"] = "[i]",
}
--fluid-logistics
local FluidLogisticsBlacklist = {"heat", "spaceship","display"}
local FluidLogisticsSubOrder =
{
    ["storage"] = "[b]",
    ["minibuffer"] = "[a]",
    ["pump"] = "[c]",
    ["duct"] = "[m]",
    ["wood-pipe"] = "[d]",
    ["steel"] = "[f]",
    ["space"] = "[g]",
    ["valve"] = "[h]",
    ["pipe"] = "[e]",
}
local FluidLogisticsItemOrder =
{
    ["tank"] = "[a]",
    ["elbow"] = "[a]",
    ["straight"] = "[c]",
    ["check"] = "[a]",
    ["flow"] = "[a]",
    ["logistic"] = "[c]",
    ["ground"] = "[b]",
    ["long"] = "[a]",
    ["pipe"] = "[a]",
    ["kr-fluid"] = "[b]",
    ["cross"] = "[c]",
    ["curve"] = "[c]",
    ["intake"] = "[e]",
    ["outtake"] = "[e]",
    ["small"] = "[a]",
    ["junction"] = "[c]",
    ["return"] = "[d]",
    ["steel"] = "[b]",
    ["offshore"] = "[z]",
}
--processing
local ProcessingBlacklist = { "head", "coal", "sulfur", "kerosene", "fi_refinery_basic_item", "fu_drill_item",
    "crystal", "equipment", "cube", "card","generator" }
local ProcessingSubOrder =
{
    ["assembling"] = "[c]",
    ["drill"] = "[a]",
    ["extractor"] = "[b]",
    ["pumpjack"] = "[d]",
    ["furnace"] = "[b]",
    ["crafter"] = "[j]",
    ["laboratory"] = "[j]",
    ["facility"] = "[j]",
    ["refinery"] = "[i]",
    ["plant"] = "[e]",
    ["burner"] = "[f]",
    ["computer"] = "[j]",
    ["telescope"] = "[j]",
    ["energy"] = "[z]",
    ["centrifuge"] = "[j]",
    ["radiator"] = "[j]",
    ["charging"] = "[z]",
    ["crusher"] = "[g]",
    ["green"] = "[g]",
    ["lab"] = "[h]",
    
}
local ProcessingItemOrder =
{
    ["space"] = "[d]",
    ["mk2"] = "[c]",
    ["area"] = "[d]",
    ["mk3"] = "[e]",
    ["quarry"] = "[f]",
    ["crust"] = "[y]",
    ["moho"] = "[y]",
    ["mantle"] = "[y]",
    ["offshore"] = "[a]",
    ["jack"] = "[a]",
    ["stone"] = "[a]",
    ["steel"] = "[b]",
    ["electric"] = "[b]",
    ["industrial"] = "[d]",
    ["advanced"] = "[e]",
    ["arc"] = "[f]",
    ["fluid"] = "[a]",
    ["growth"] = "[a]",
    ["lifesupport"] = "[a]",
    ["thermodynamics"] = "[a]",
    ["biochemical"] = "[a]",
    ["decontamination"] = "[a]",
    ["genetics"] = "[a]",
    ["radiation"] = "[a]",
    ["super"] = "[a]",
    ["quantum"] = "[a]",
    ["seafloor"] = "[f]",
    ["transmitter"] = "[a]",
    ["receiver"] = "[a]",
    ["chemical"] = "[a]",
    ["stabilizer"] = "[a]",
    ["battery"] = "[a]",
    ["biusart"] = "[c]",
    ["singularity"] = "[d]",
    ["recycling"] = "[a]",
    ["machine"] = "[a]",
    ["burner"] = "[a]",
    ["oil"] = "[a]",
    ["house"] = "[a]",
    ["electrolysis"] = "[a]",
    ["filtration"] = "[a]",
    ["matter"] = "[a]",
}
--network
local NetworkBlacklist = { "aeroframe", "data", "recycle", "cybersyn", "clamp" }
local NetworkSubOrder =
{
    ["combinator"] = "[e]",
    ["pole"] = "[a]",
    ["pylon"] = "[c]",
    ["substation"] = "[b]",
    ["buoy"] = "[d]",
    ["lamp"] = "[g]",
    ["switch"] = "[e]",
    ["signal"] = "[f]",
    ["speaker"] = "[e]",
}
local NetworkItemOrder =
{
    ["constant"] = "[a]",
    ["decider"] = "[a]",
    ["arithmetic"] = "[a]",
    ["wooden"] = "[c]",
    ["small"] = "[b]",
    ["medium"] = "[d]",
    ["big"] = "[e]",
    ["floating"] = "[e]",
    ["addon"] = "[a]",
    ["wire"] = "[a]",
    ["light"] = "[a]",
    ["mk2"] = "[b]",
    ["se"] = "[a]",
    ["programmable"] = "[a]",
    ["power"] = "[a]",
    ["receiver"] = "[a]",
}
--transport
local TransportBlacklist = { "turret", "shell", "laboratory", "battery", "belt", "lifesupport", "card", "scrapping",
    "rocket", "fiber", "fuel", "fi_robo_port_item", "el_tank_item", "roboport","spaceship", }
local TransportSubOrder =
{
    ["spidertron"] = "[g]",
    ["rail"] = "[a]",
    ["locomotive"] = "[b]",
    ["cybersyn"] = "[d]",
    ["buoy"] = "[e]",
    ["train-stop"] = "[d]",
    ["port"] = "[e]",
    ["wagon"] = "[c]",
    ["ship"] = "[c]",
    ["car"] = "[f]",
    ["tank"] = "[g]",
    ["additional"] = "[g]",
}
local TransportItemOrder =
{
    ["dock"] = "[a]",
    ["interface"] = "[a]",
    ["space"] = "[a]",
    ["combinator"] = "[c]",
    ["nuclear"] = "[a]",
    ["station"] = "[a]",
    ["cargo"] = "[a]",
    ["fluid"] = "[a]",
    ["power"] = "[a]",
    ["wood"] = "[a]",
    ["artillery"] = "[z]",
    ["item"] = "[c]",
    ["engine"] = "[c]",
    ["advanced"] = "[c]",
}
--beacons DONE
local BeaconsBlacklist = { "base" }
local BeaconsSubOrder =
{
    ["beacon"] = "[a]",
    ["speed"] = "[b]",
    ["productivity"] = "[c]",
    ["effectivity"] = "[d]",
}
local BeaconsItemOrder =
{
    ["module"] = "[a]",
    ["compact"] = "[b]",
    ["wide"] = "[c]",
    ["singularity"] = "[b]",
}
--power
local PowerBlacklist = { "equipment", "oxygen", "star", "lead", "gr_charger_item", "fu_boiler_item", "robo",
    "el_charger_item", "bi-bio-reactor", "stelar", "tokamak", "plasma" }
local PowerSubOrder =
{
    ["solar"] = "[c]",
    ["accumulator"] = "[c]",
    ["turbine"] = "[c]",
    ["boiler"] = "[c]",
    ["reactor"] = "[c]",
    ["generator"] = "[c]",
    ["charger"] = "[c]",
    ["heat"] = "[c]",
    ["steam-engine"] = "[c]",
    ["kr-energy-storage"] = "[c]",
    ["pressurizer"] = "[c]",
    ["intergalactic"] = "[c]",
}
local PowerItemOrder =
{
    ["wind"] = "[a]",
    ["steam"] = "[a]",
    ["burner"] = "[a]",
    ["panel"] = "[a]",
    ["pipe"] = "[a]",
    ["exchanger"] = "[a]",
    ["electric"] = "[a]",
    ["battery"] = "[a]",
    ["gas"] = "[a]",
    ["bio"] = "[a]",
    ["matter"] = "[a]",
    ["nuclear"] = "[a]",
    ["condenser"] = "[a]",
    ["fusion"] = "[a]",
    ["big"] = "[a]",
    ["item"] = "[a]",
    ["space"] = "[a]",
    ["transceiver"] = "[c]",
}
--space
local SpaceBlacklist = { "science", "recycle", "ore", "data", "scrapping", "matter" }
local SpaceSubOrder =
{
    ["spaceship"] = "[c]",
    ["silo"] = "[b]",
    ["pad"] = "[a]",
    ["satellite"] = "[d]",
    ["delivery"] = "[e]",
    ["capsul"] = "[e]",
    ["probe"] = "[d]",
}
local SpaceItemOrder =
{
    ["tank"] = "[c]",
    ["engine"] = "[d]",
    ["floor"] = "[b]",
    ["wall"] = "[b]",
    ["gate"] = "[b]",
    ["console"] = "[a]",
    ["clamp"] = "[e]",
    ["space"] = "[b]",
    ["rocket"] = "[g]",
    ["void"] = "[c]",
    ["star"] = "[d]",
    ["belt"] = "[e]",
    ["gps"] = "[f]",
    ["cannon"] = "[a]",
}
--resources
local ResourcesBlacklist = { "landfill", "matter", "text", "stream", "formatting", "cannon", "machine", "inserter",
    "alloy", "nitinol", "sludge", "shotgun", "fence", "crusher", "battery", "solar", "bi-cokery", "probe", "science" }
local ResourcesSubOrder =
{
    ["coal"] = "[m]",
    ["iron"] = "[a]",
    ["copper"] = "[b]",
    ["uranium"] = "[o]",
    ["rare"] = "[p]",
    ["lithium"] = "[w]",
    ["bismuth"] = "[f]",
    ["gold"] = "[q]",
    ["lead"] = "[d]",
    ["silver"] = "[u]",
    ["tungsten"] = "[r]",
    ["titanium"] = "[s]",
    ["zircon"] = "[h]",
    ["titan"] = "[r]",
    ["salt"] = "[z]",
    ["graphite"] = "[i]",
    ["imersite"] = "[t]",
    ["nickel"] = "[j]",
    ["zinc"] = "[k]",
    ["alumin"] = "[l]",
    ["manganese"] = "[g]",
    ["crystal"] = "[z]",
    ["stone"] = "[n]",
    ["seed"] = "[za]",
    ["resin"] = "[zb]",
    ["ash"] = "[zb]",
    ["coke"] = "[l]",
    ["glass"] = "[x]",
    ["wood"] = "[zb]",
    ["logs"] = "[zb]",
    ["sand"] = "[n]",
    ["ceramic"] = "[n]",
    ["neodym"] = "[v]",
    ["flourite"] = "[z]",
    ["fertilizer"] = "[z]",
    ["arboretum"] = "[z]",
    ["tin"] = "[c]",

}
local ResourcesItemOrder =
{
    ["core"] = "[a]",
    ["ore"] = "[b]",
    ["flak"] = "[b]",
    ["raw"] = "[b]",
    ["enriched"] = "[c]",
    ["filtration"] = "[z]",
    ["plate"] = "[e]",
    ["metals"] = "[e]",
    ["recycle"] = "[y]",
    ["cast"] = "[e]",
    ["ingot"] = "[f]",
    ["burn"] = "[y]",
    ["vulcanite"] = "[y]",
    ["zirconia"] = "[b]",
    ["alumina"] = "[b]",
    ["purify"] = "[b]",
    ["charge"] = "[a]",
    ["brick"] = "[y]",
    ["grow"] = "[a]",
    ["crushed"] = "[y]",
    ["energy"] = "[y]",
    ["resin"] = "[y]",
    ["solid"] = "[y]",
    ["atoms"] = "[y]",
    ["thermodynamics"] = "[y]",
}
--manufactoring (intermediat-products)
local ManufactoringBlacklist = { "filtration" }
local ManufactoringSubOrder =
{
    ["upgrade"] = "[y]",
    ["density"] = "[a]",
    ["gear"] = "[a]",
    ["beam"] = "[a]",
    ["material"] = "[a]",
    ["fiber"] = "[a]",
}
local ManufactoringItemOrder =
{
    ["item"] = "[y]",
    ["copper"] = "[y]",
    ["holmium"] = "[y]",
    ["aluminum"] = "[y]",
    ["acsr"] = "[y]",
    ["naquium"] = "[y]",
    ["lithium"] = "[y]",
    ["sulfur"] = "[y]",
    ["charged"] = "[y]",
    ["nickel"] = "[y]",
    ["quantum"] = "[a]",
    ["structure"] = "[a]",
    ["iron"] = "[a]",
    ["steel"] = "[a]",
    ["imersium"] = "[a]",
    ["box"] = "[a]",
    ["basic"] = "[a]",
    ["superior"] = "[a]",
    ["layer"] = "[a]",
    ["advanced"] = "[a]",
    ["testing"] = "[a]",
    ["glass"] = "[a]",
    ["natural"] = "[a]",
    ["carbon"] = "[a]",
    ["probe"] = "[a]",
    ["red"] = "[a]",
    ["green"] = "[a]",
    ["blue"] = "[a]",
    ["purple"] = "[a]",
    ["yellow"] = "[a]",
    ["grey"] = "[a]",
    ["white"] = "[a]",
}
--electronics
local ElectronicsBlacklist = {}
local ElectronicsSubOrder =
{
    ["circuit"] = "[a]",
}
local ElectronicsItemOrder =
{
    ["advanced"] = "[a]",
}
--fluids
local FluidBlacklist = { "biter", "purify", "equipment", "train", "water-item", "se-matter-fusion-dirty",
    "se-dirty-water-filtration-holmium", "se-dirty-water-filtration-iridium" }
local FluidSubOrder =
{
    ["sulfur"] = "[a]",
    ["kerosene"] = "[a]",
    ["gas"] = "[a]",
    ["methan"] = "[a]",
    ["nitric"] = "[a]",
    ["plastic"] = "[a]",
    ["biomass"] = "[a]",
    ["cellulose"] = "[a]",
    ["strong"] = "[a]",
    ["vinyl"] = "[a]",
    ["hydrogen"] = "[a]",
    ["epoxy"] = "[a]",
    ["formaldehyde"] = "[a]",
    ["liquefaction"] = "[a]",
    ["water"] = "[a]",
    ["ammonia"] = "[a]",
    ["coolant"] = "[a]",
    ["star"] = "[a]",
    ["rich"] = "[a]",
    ["dirty"] = "[a]",
    ["neutron"] = "[a]",
    ["cracking"] = "[a]",
    ["sludge"] = "[a]",
    ["gel"] = "[a]",
    ["organotins"] = "[a]",
    ["oil"] = "[a]",
    ["stream"] = "[a]",
    ["stelerator"] = "[a]",
    ["tokamak"] = "[a]",
    ["exchanger"] = "[a]",
    ["activator"] = "[a]",
    ["ferric"] = "[a]",
}
local FluidItemOrder =
{
    ["bi"] = "[a]",
    ["refinery"] = "[a]",
    ["reforming"] = "[b]",
    ["acid"] = "[c]",
    ["growing"] = "[a]",
    ["crack"] = "[a]",
    ["chloride"] = "[a]",
    ["coal"] = "[a]",
    ["coke"] = "[a]",
    ["formaldehyde"] = "[a]",
    ["electrolysis"] = "[a]",
    ["melting"] = "[a]",
    ["space"] = "[a]",
    ["decontamination"] = "[a]",
    ["seperation"] = "[a]",
    ["kr"] = "[a]",
    ["heavy"] = "[a]",
    ["lithium"] = "[a]",
    ["vent"] = "[a]",
    ["fluid"] = "[a]",
    ["item"] = "[a]",
    ["engine"] = "[a]",
    ["solution"] = "[a]",
    ["extract"] = "[a]",
    ["processing"] = "[a]",
    ["light"] = "[a]",
    ["chemical"] = "[a]",
    ["nutrient"] = "[a]",
    ["particle"] = "[a]",
    ["plasma"] = "[a]",
    ["ion"] = "[a]",
    ["proton"] = "[a]",
    ["antimatter"] = "[a]",
}
--science
local ScienceBlacklist = { "se-fusion-test-data", "gravit", "infrared", "micro", "electromagnetic", "shielding",
    "monopole", "basic",
    "blank", "optimization", "singularity", "advanced" }
--first string to look for and what order to set the subgroup
local ScienceSubOrder =
{
    ["pack"] = "z",
    ["data"] = "z",
    ["tech"] = "z",
    ["card"] = "z",
}
--second string to look for and what order to set the item
local ScienceItemOrder =
{
    ["blue"] = "[a]",
    ["green"] = "[a]",
    ["white"] = "[a]",
    ["red"] = "[a]",
    ["black"] = "[a]",
    ["purple"] = "[a]",
    ["yellow"] = "[a]",
    ["grey"] = "[a]",
    ["stacked"] = "[a]",
    ["sign"] = "z",
    ["fusion"] = "z",
    ["laser"] = "z",
    ["magnet"] = "z",
    ["plasma"] = "z",
}
--equipment
local EquipmentBlacklist = {}
local EquipmentSubOrder =
{
    ["armor"] = "[a]",
}
local EquipmentItemOrder =
{
    ["light"] = "[a]",
}
--defences
local DefencesBlacklist = { "data" }
local DefencesSubOrder =
{
    ["cliff"] = "[a]",
    ["turret"] = "f",
    ["wall"] = "f",
    ["gate"] = "f",
    ["shield"] = "f",
}
local DefencesItemOrder =
{
    ["stone"] = "a",
    ["concrete"] = "b",
    ["steel"] = "c",
    ["imersium"] = "d",
    ["projector"] = "e",
    ["gun"] = "[a]",
    ["electric"] = "[a]",
    ["artillery"] = "[a]",
    ["rocket"] = "[a]",
    ["railgun"] = "[a]",
    ["laser"] = "[a]",
    ["flamethrower"] = "[a]",
    ["dart"] = "[a]",
    ["explosives"] = "[a]",
}
--ammo
local AmmoBlacklist = { "reactor", "kr", "dart-rifle", "dart-turret", "fuel", "artillery-turret", "heavy-rocket-launcher" }
local AmmoSubOrder =
{
    ["anti-material"] = "[a]",
    ["railgun"] = "[d]",
    ["artillery"] = "[c]",
    ["biter"] = "[f]",
    ["spitter"] = "[f]",
    ["rifle"] = "[a]",
    ["ammo"] = "[b]",
    ["grenade"] = "[g]",
    ["capsule"] = "[g]",
    ["virus"] = "[a]",
    ["rocket"] = "[e]",
    ["dart"] = "[a]",
    ["atomic"] = "[a]",
}
local AmmoItemOrder =
{
    ["magazine"] = "[a]",
    ["item"] = "[a]",
    ["cluster"] = "[a]",
    ["big"] = "[a]",
    ["small"] = "[a]",
    ["medium"] = "[a]",
    ["behemoth"] = "[a]",
    ["kr"] = "[a]",
    ["slowdown"] = "[a]",
    ["poison"] = "[a]",
    ["defender"] = "[a]",
    ["distractor"] = "[a]",
    ["destroyer"] = "[a]",
    ["shell"] = "[a]",
    ["turret"] = "[a]",
    ["antimatter"] = "[a]",
    ["heavy"] = "[a]",
    ["bomb"] = "[a]",
}
--tiles
local TilesBlacklist = { "se-matter-fusion-dirty", "fu_fusion_card_2_item" }
local TilesSubOrder =
{
    ["text"] = "[e]",
    ["landfill"] = "[g]",
    ["concrete"] = "[a]",
    ["platform"] = "[c]",
    ["display"] = "[d]",
    ["reinforced"] = "[b]",
    ["waterfill"] = "[f]",
    ["recycle"] = "[z]",
    ["particle"] = "[z]",
    ["fusion"] = "[z]",
}
local TilesItemOrder =
{
    ["plate"] = "[a]",
    ["plating"] = "[a]",
    ["scaffold"] = "[a]",
    ["copper"] = "[a]",
    ["steel"] = "[a]",
    ["iron"] = "[a]",
    ["hazard"] = "[a]",
    ["refined"] = "[a]",
    ["balanced"] = "[a]",
    ["2"] = "[a]",
    ["silica"] = "[a]",
    ["sand"] = "[a]",
    ["ore"] = "[a]",
    ["graphite"] = "[a]",
    ["zircon"] = "[a]",
    ["coal"] = "[a]",
    ["imersite"] = "[a]",
    ["vitamelange"] = "[a]",
    ["vulcanite"] = "[a]",
    ["cryonite"] = "[a]",
    ["rare"] = "[a]",
    ["scrap"] = "[a]",
    ["dirty"] = "[a]",
    ["fold"] = "[a]",
    ["stone"] = "[a]",
    ["uranium"] = "[a]",
    ["beryllium"] = "[a]",
    ["holmium"] = "[a]",
    ["iridium"] = "[a]",
    ["naquium"] = "[a]",
    ["pole"] = "[a]",
    ["radar"] = "[a]",
    ["substation"] = "[a]",
    ["decontamination"] = "[a]",
}
--barreling
local BarrelingBlacklist = { "empty-barrel" }
local BarrelingSubOrder =
{
    ["barrel"] = "[a]",
}
local BarrelingItemOrder =
{
    ["barrel"] = "[a]",
}


GroupBlacklist = {
    ["item-logistics"] = ItemLogisticsBlacklist,
    ["fluid-logistics"] = FluidLogisticsBlacklist,
    ["processing"] = ProcessingBlacklist,
    ["network"] = NetworkBlacklist,
    ["transport"] = TransportBlacklist,
    ["beacons"] = BeaconsBlacklist,
    ["power"] = PowerBlacklist,
    ["space"] = SpaceBlacklist,
    ["resources"] = ResourcesBlacklist,
    ["manufactoring"] = ManufactoringBlacklist,
    ["electronics"] = ElectronicsBlacklist,
    ["fluids"] = FluidBlacklist,
    ["science"] = ScienceBlacklist,
    ["equipment"] = EquipmentBlacklist,
    ["defences"] = DefencesBlacklist,
    ["ammo"] = AmmoBlacklist,
    ["tiles"] = TilesBlacklist,
    ["barreling"] = BarrelingBlacklist,
}
GroupSubOrder = {
    ["item-logistics"] = ItemLogisticsSubOrder,
    ["fluid-logistics"] = FluidLogisticsSubOrder,
    ["processing"] = ProcessingSubOrder,
    ["network"] = NetworkSubOrder,
    ["transport"] = TransportSubOrder,
    ["beacons"] = BeaconsSubOrder,
    ["power"] = PowerSubOrder,
    ["space"] = SpaceSubOrder,
    ["resources"] = ResourcesSubOrder,
    ["manufactoring"] = ManufactoringSubOrder,
    ["electronics"] = ElectronicsSubOrder,
    ["fluids"] = FluidSubOrder,
    ["science"] = ScienceSubOrder,
    ["equipment"] = EquipmentSubOrder,
    ["defences"] = DefencesSubOrder,
    ["ammo"] = AmmoSubOrder,
    ["tiles"] = TilesSubOrder,
    ["barreling"] = BarrelingSubOrder,
}
GroupItemOrder = {
    ["item-logistics"] = ItemLogisticsItemOrder,
    ["fluid-logistics"] = FluidLogisticsItemOrder,
    ["processing"] = ProcessingItemOrder,
    ["network"] = NetworkItemOrder,
    ["transport"] = TransportItemOrder,
    ["beacons"] = BeaconsItemOrder,
    ["power"] = PowerItemOrder,
    ["space"] = SpaceItemOrder,
    ["resources"] = ResourcesItemOrder,
    ["manufactoring"] = ManufactoringItemOrder,
    ["electronics"] = ElectronicsItemOrder,
    ["fluids"] = FluidItemOrder,
    ["science"] = ScienceItemOrder,
    ["equipment"] = EquipmentItemOrder,
    ["defences"] = DefencesItemOrder,
    ["ammo"] = AmmoItemOrder,
    ["tiles"] = TilesItemOrder,
    ["barreling"] = BarrelingItemOrder,
}
--this sorts the items into these groups in this order
GroupSortOrder = { "barreling", "item-logistics", "fluid-logistics", "processing", "network", "transport", "beacons",
    "power", "space", "defences", "equipment", "ammo", "tiles", "science", "resources", "manufactoring", "electronics",
    "fluids" }

ReplaceSubgroup = {
    ["fuel-recycle"] = "uranium",
    ["gps-satellite"] = "probe",
    ["atomic-bomb"] = "rocket",
    ["intergalactic-transceiver"] = "accumulator",
    ["shield-projector"] = "wall",
    ["crust-extractor"] = "drill",
    ["mantle-extractor"] = "drill",
    ["moho-extractor"] = "drill",
    ["plant-chemical"] = "refinery",
}
--this will assign perfect matches to there own subgroup
ReplaceSubgroupDirectName =
{
    ["coke"] = { name = "coal",order = "[aa]" },
}

--This will directly add item to subgroup, if no subgroup exist, it will fail
SortDirectTable =
{
    ["se-supercharger"] = { name = "roboport", order = "[a]" },
    ["bi-bio-farm"] = { name = "green", order = "[a]" },
    ["bi-bio-garden"] = { name = "green", order = "[a]" },
    ["fuel-processor"] = { name = "burner", order = "[a]" },
    ["kr-air-purifier"] = { name = "green", order = "[a]" },
    ["kr-atmospheric-condensor"] = { name = "plant", order = "[a]" },
    ["kr-research-server"] = { name = "computer", order = "[a]" },
    ["kr-shelter"] = { name = "chest", order = "[a]" },
    ["kr-shelter-plus"] = { name = "chest", order = "[a]" },
    ["oil_rig"] = { name = "pumpjack", order = "[a]" },
    ["se-casting-machine"] = { name = "furnace", order = "[a]" },
    ["se-pulveriser"] = { name = "crusher", order = "[a]" },
    ["se-space-manufactory"] = { name = "assembling", order = "[a]" },
    ["buoy"] = { name = "port", order = "[a]" },
    ["se-space-plasma-generator"] = { name = "facility", order = "[a]" },
    ["se-fluid-burner-generator"] = { name = "turbine", order = "[a]" },
    ["steam-engine"] = { name = "turbine", order = "[a]" },
    ["kr-energy-storage"] = { name = "accumulator", order = "[a]" },
    ["se-space-particle-accelerator"] = { name = "facility", order = "[a]" },
    ["kr-gas-power-station"] = { name = "generator", order = "[a]" },
    ["gas-extractor"] = { name = "pumpjack", order = "[a]" },
}
