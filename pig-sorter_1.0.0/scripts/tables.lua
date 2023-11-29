--------NEED TO GO THROUGH AND DOUBLE CHECK EVERYTHING-----------------

--item-logistics
local ItemLogisticsBlacklist = { "equipment", "companion", "substrate" }
local ItemLogisticsSubOrder =
{
    ["underground-belt"] = "[f]",
    ["floating-belt"] = "[j]",
    ["floating-inserter"] = "[j]",
    ["floating"] = "[j]",
    ["belt"] = "[e]",
    ["splitter"] = "[g]",
    ["loader"] = "[h]",
    ["inserter"] = "[i]",
    ["chest"] = "[a]",
    ["aai-strongbox"] = "[b]",
    ["aai-storehouse"] = "[c]",
    ["aai-warehouse"] = "[d]",
    ["robo"] = "[n]",
    ["aai-loader"] = "[a]",
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
    ["junction"] = "[a]",
    ["curve"] = "[a]",
    ["cross"] = "[a]",
    ["return"] = "[a]",
    ["end-point"] = "[a]",
    ["space"] = "[z]",
    ["storage"] = "[b]",
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
    ["port"] = "[a]",
    ["long"] = "[b]",
    ["ground"] = "[a]",
}
--fluid-logistics
local FluidLogisticsBlacklist = { }
local FluidLogisticsSubOrder =
{
    ["storage"] = "[a]",
    ["minibuffer"] = "[k]",
    ["pump"] = "[m]",
    ["duct"] = "[m]",
    ["pipe"] = "[l]",
    ["valve"] = "[m]",
}
local FluidLogisticsItemOrder =
{
    ["tank"] = "[a]",
    ["fluid"] = "[a]",
    ["elbow"] = "[a]",
    ["straight"] = "[a]",
    ["check"] = "[a]",
    ["flow"] = "[a]",
}
--processing
local ProcessingBlacklist = { "head", "coal", "sulfur", "kerosene", "fi_refinery_basic_item", "fu_drill_item",
    "crystal", "equipment", "cube", "card" }
local ProcessingSubOrder =
{
    --["assembling"] = "c",
    ["drill"] = "a",
    ["extractor"] = "b",
    ["pumpjack"] = "d",
    ["furnace"] = "b",
    ["crafter"] = "j",
    ["laboratory"] = "j",
    ["facility"] = "j",
    ["refinery"] = "i",
    ["plant"] = "e",
    ["burner"] = "f",
    ["computer"] = "j",
    ["telescope"] = "j",
    ["energy"] = "z",
    ["centrifuge"] = "j",
    ["radiator"] = "j",
    ["charging"] = "z",
    ["crusher"] = "g",
    ["greenhouse"] = "g",
    ["lab"] = "h",
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
    ["bio"] = "[a]",
    ["biusart"] = "[c]",
    ["singularity"] = "[d]",
    ["recycling"] = "[a]",
    ["machine"] = "[a]",
    ["fi"] = "[c]",
    ["gr"] = "[d]",
    ["el"] = "[a]",
    ["fu"] = "[b]",
    ["kr"] = "[d]",
}
--network
local NetworkBlacklist = { "aeroframe", "data", "recycle", "cybersyn" }
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
    "rocket", "fiber", "fuel", "fi_robo_port_item", "el_tank_item", "roboport" }
local TransportSubOrder =
{
    ["spidertron"] = "[g]",
    ["rail"] = "[a]",
    ["locomotive"] = "[b]",
    ["train"] = "[g]",
    ["cybersyn"] = "[d]",
    ["rail-chain-signal"] = "[d]",
    ["rail-signal"] = "[d]",
    ["chain-buoy"] = "[e]",
    ["buoy"] = "[e]",
    ["chain_buoy"] = "[e]",
    ["train-stop"] = "[d]",
    ["port"] = "[e]",
    ["wagon"] = "[c]",
    ["tanker"] = "[c]",
    ["car"] = "[f]",
    ["hcraft"] = "[g]",
    ["mcraft"] = "[g]",
    ["tank"] = "[g]",
    ["boat"] = "[e]",
    ["oil_tanker"] = "[e]",
    ["additional"] = "[g]",
    ["bridge_base"] = "[a]",
}
local TransportItemOrder =
{
    ["equipment"] = "[a]",
    ["dock"] = "[a]",
    ["interface"] = "[a]",
    ["space"] = "[a]",
    ["combinator"] = "[c]",
    ["nuclear"] = "[a]",
    ["station"] = "[a]",
    ["gr"] = "[c]",
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
    ["ki"] = "[a]",
    ["fi_modules"] = "[d]",
    ["speed"] = "[b]",
    ["productivity"] = "[c]",
    ["effectivity"] = "[d]",
}
local BeaconsItemOrder =
{
    ["module"] = "[a]",
    ["compact"] = "[b]",
    ["wide"] = "[b]",
    ["item"] = "[c]",
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
local SpaceBlacklist = { "science", "recycle", "ore", "data", "scrapping" }
local SpaceSubOrder =
{
    ["spaceship"] = "[c]",
    ["silo"] = "[b]",
    ["pad"] = "[a]",
    ["satellite"] = "[d]",
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
    --["fuel"] = "[y]",
    ["resin"] = "[zb]",
    ["ash"] = "[zb]",
    ["coke"] = "[l]",
    ["glass"] = "[x]",
    ["wood"] = "[zb]",
    ["logs"] = "[zb]",
    ["sand"] = "[n]",
    ["plutonium"] = "[a]",
    ["ceramic"] = "[n]",
    ["neodym"] = "[v]",
    ["flourite"] = "[z]",
    --["space"] = "[z]",
    ["fertilizer"] = "[z]",
    ["arboretum"] = "[z]",
    ["tin"] = "[c]",
    ["diamond"] = "[i]",

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
    ["pure"] = "[c]",
    ["ingot"] = "[f]",
    ["molten"] = "[d]",
    ["burn"] = "[y]",
    ["vulcanite"] = "[y]",
    ["239"] = "[y]",
    ["bi"] = "[y]",
    ["1"] = "[y]",
    ["2"] = "[y]",
    ["vc"] = "[y]",
    ["zirconia"] = "[b]",
    ["alumina"] = "[b]",
    ["purify"] = "[b]",
    ["charge"] = "[a]",
    ["brick"] = "[y]",
    ["grow"] = "[a]",
    ["crushed"] = "[y]",
    ["energy"] = "[y]",
    ["resin"] = "[y]",
    ["item"] = "[y]",
    ["solid"] = "[y]",
    ["atoms"] = "[y]",
    ["r1"] = "[y]",
    ["r2"] = "[y]",
    ["r3"] = "[y]",
    ["r4"] = "[y]",
    ["r5"] = "[y]",
    ["dt"] = "[y]",
    ["thermodynamics"] = "[y]",
    ["synthe"] = "[y]",
}
--manufactoring (intermediat-products)
local ManufactoringBlacklist = { "filtration" }
local ManufactoringSubOrder =
{
    ["upgrade"] = "[y]",
    ["board"] = "[y]",
    --["circuit"] = "[a]",
    ["electro"] = "[a]",
    ["cable"] = "[a]",
    ["battery"] = "[a]",
    ["processor"] = "[a]",
    ["density"] = "[a]",
    ["gear"] = "[a]",
    ["beam"] = "[a]",
    ["material"] = "[a]",
    ["fiber"] = "[a]",
    ["space"] = "[a]",
    ["gr"] = "[a]",
    --["fi"] = "[y]",
    --["fu"] = "[y]",
    --["gr"] = "[y]",
}
local ManufactoringItemOrder =
{
    ["item"] = "[y]",
    ["phenolic"] = "[y]",
    ["fibreglass"] = "[y]",
    ["components"] = "[y]",
    ["intergrated"] = "[y]",
    ["processing"] = "[y]",
    ["copper"] = "[y]",
    ["holmium"] = "[y]",
    ["superconductive"] = "[y]",
    ["aluminum"] = "[y]",
    ["acsr"] = "[y]",
    ["tinned"] = "[y]",
    ["insulated"] = "[y]",
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
    ["silver"] = "[a]",
    ["handcraft"] = "[a]",
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
local BarrelingBlacklist = {}
local BarrelingSubOrder =
{
    ["empty"] = "[a]",
    ["fill"] = "[a]",
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
    ["gr-tanker"] = "wagon",
    ["gr-wagon"] = "wagon",
    ["gr-train"] = "locomotive",
    ["item-train"] = "locomotive",
    ["hcraft-item"] = "vehicle",
    ["mcraft-item"] = "vehicle",
    ["tank-advanced"] = "vehicle",
    ["cargo-ship"] = "watervehicle",
    ["additional-engine"] = "train",
    ["gps-satellite"] = "probe",
    ["atomic-bomb"] = "rocket",
    ["bio-boiler"] = "reactor",
    ["gas-boiler"] = "reactor",
    ["electric-boiler"] = "reactor",
    ["generator-fluid"] = "turbine",
    ["generator-item"] = "turbine",
    ["pressurizer-item"] = "turbine",
    ["intergalactic-transceiver"] = "accumulator",
    ["shield-projector"] = "wall",
    ["floating-long"] = "floating",
    ["floating-burner"] = "floating",
    ["floating-filter"] = "floating",
    ["floating-stack"] = "floating",
    ["floating-superior"] = "floating",
    ["ceramic-item"] = "stone",
    ["crafter-fi"] = "assembling",
    ["crafter-gr"] = "assembling",
    ["crust-extractor"] = "drill",
    ["mantle-extractor"] = "drill",
    ["moho-extractor"] = "drill",
    ["plant-chemical"] = "refinery",
    ["bi-logs"] = "wood",
    ["bi-arboretum"] = "seed",
    ["synthe-diamond"] = "graphite",
    ["bi-fertilizer"] = "seed",
}
--ADDD ORDER TO MEEE!!
ReplaceSubgroupDirectName =
{
    ["satellite"] = { name = "probe", order = "[a]" },
    ["rail-signal"] = { name = "rail-signal", order = "[b]" },
    ["rail-chain-signal"] = { name = "rail-signal", order = "[b]" },
    ["chain_buoy"] = { name = "port", order = "[a]" },
    ["buoy"] = { name = "port", order = "[a]" },
    ["train-stop"] = { name = "rail-signal", order = "[a]" },
    ["car"] = { name = "vehicle", order = "[a]" },
    ["tank"] = { name = "vehicle", order = "[a]" },
    ["boat"] = { name = "watervehicle", order = "[a]" },
    ["bridge_base"] = { name = "rail", order = "[a]" },
    ["oil_tanker"] = { name = "watervehicle", order = "[a]" },
    ["steam-engine"] = { name = "turbine", order = "[a]" },
    ["kr-energy-storage"] = { name = "accumulator", order = "[a]" },
    ["boiler"] = { name = "reactor", order = "[a]" },
    ["gate"] = { name = "wall", order = "[a]" },
    ["aai-loader"] = { name = "loader", order = "[a]" },
    ["floating-belt"] = { name = "floating", order = "[a]" },
    ["floating-inserter"] = { name = "floating", order = "[a]" },
}

--ADD ORDER TO ME!!!
SortDirectTable =
{
    ["vehicle-roboport"] = { name = "train", order = "[a]" },
    ["fi_equipment_player_reactor_item"] = { name = "equipment", order = "a2" },
    ["fi_equipment_player_shield_item"] = { name = "equipment", order = "s" },
    ["el_tank_item"] = { name = "storage", order = "[a]" },
    ["se-supercharger"] = { name = "robo", order = "[d]" },
    ["fi_castor_item"] = { name = "burner", order = "[a]" },
    ["el_burner_item"] = { name = "generator", order = "[a]" },
    ["el_burner_kerosene_item"] = { name = "generator", order = "[a]" },
    ["burner-turbine"] = { name = "generator", order = "[a]" },
    ["kr-wind-turbine"] = { name = "generator", order = "[a]" },
    ["gr_black_hole_item"] = { name = "generator", order = "[a]" },
    ["fu_miner_item"] = { name = "drill", order = "[y]" },
    ["fi_miner_upgrade_item"] = { name = "drill", order = "[x]" },
    ["fu_miner_upgrade_item"] = { name = "drill", order = "[x]" },
    ["gr_miner_upgrade_item"] = { name = "drill", order = "[x]" },
    ["se-casting-machine"] = { name = "furnace", order = "[a]" },
    ["offshore-pump"] = { name = "pumpjack", order = "[a]" },
    ["gas-extractor"] = { name = "pumpjack", order = "[a]" },
    ["oil_rig"] = { name = "pumpjack", order = "[a]" },
    ["se-core-miner"] = { name = "drill", order = "[z]" },
    ["fuel-processor"] = { name = "furnace", order = "[a]" },
    ["se-space-hypercooler"] = { name = "radiator", order = "[a]" },
    ["bi-cokery"] = { name = "furnace", order = "[a]" },
    ["bi-bio-reactor"] = { name = "refinery", order = "[z]" },
    ["se-pulveriser"] = { name = "crusher", order = "[a]" },
    ["se-nexus"] = { name = "laboratory", order = "[a]" },
    ["se-space-plasma-generator"] = { name = "facility", order = "[a]" },
    ["se-space-particle-collider"] = { name = "laboratory", order = "[a]" },
    ["se-space-particle-accelerator"] = { name = "laboratory", order = "[a]" },
    ["se-space-material-fabricator"] = { name = "laboratory", order = "[a]" },
    ["kr-research-server"] = { name = "computer", order = "[a]" },
    ["kr-matter-assembler"] = { name = "plant", order = "[a]" },
    ["kr-atmospheric-condenser"] = { name = "plant", order = "[a]" },
    ["kr-air-purifier"] = { name = "burner", order = "[a]" },
    ["el_caster_item"] = { name = "furnace", order = "[f]" },
    ["fu_ingot_item"] = { name = "furnace", order = "[f]" },
    ["bi-bio-farm"] = { name = "greenhouse", order = "[a]" },
    ["bi-arboretum"] = { name = "greenhouse", order = "[a]" },
    ["bi-bio-garden"] = { name = "greenhouse", order = "[a]" },
    ["kr-bio-lab"] = { name = "greenhouse", order = "[a]" },
    ["fi_decay_waste_item"] = { name = "uranium", order = "[a]" },
    ["fu_mining_item"] = { name = "stone", order = "[a]" },
    ["kr-gas-power-station"] = { name = "generator", order = "[a]" },
    ["se-arcosphere-collector"] = { name = "probe", order = "[a]" },
    ["se-kr-experimental-matter-processing"] = { name = "fusion", order = "[a]" },
    ["se-space-capsule-scorched-scrapping"] = { name = "recycle", order = "[a]" },
    ["se-space-capsule-scrapping"] = { name = "recycle", order = "[a]" },
    ["se-empty-barrel-reprocessing"] = { name = "recycle", order = "[a]" },
    ["space-train-battery-pack-refurbish"] = { name = "recycle", order = "[a]" },
    ["se-broken-data-scrapping"] = { name = "recycle", order = "[a]" },
    ["se-cargo-pod-scrapping"] = { name = "recycle", order = "[a]" },
    ["se-scrap-decontamination"] = { name = "recycle", order = "[a]" },
    ["se-scrap-recycling"] = { name = "recycle", order = "[a]" },
    ["fu_pure_ore_item"] = { name = "lead", order = "[a]" },
    ["fi_ki_cpu_memory_circuit_item"] = { name = "pack", order = "[a]" },
    ["fu_ki_cpu_memory_circuit_item"] = { name = "pack", order = "[a]" },
    ["fu_space_probe_science_item"] = { name = "pack", order = "[a]" },
    ["pistol-magazine-bismuth"] = { name = "rifle", order = "[a]" },
    ["kr-tesla-coil"] = { name = "switch", order = "[a]" },
    ["dirsty-water-filtration-3"] = { name = "rare", order = "[a]" },
    ["fi_refinery_coal_item"] = { name = "kerosene", order = "[a]" },
    ["fi_refinery_kerosene_coal_item"] = { name = "kerosene", order = "[a]" },
    ["fi_refinery_basic_item"] = { name = "kerosene", order = "[a]" },
    ["coal-filtration"] = { name = "liquefaction", order = "[a]" },
    ["fu_metal_foam_item"] = { name = "alumin", order = "[a]" },
    ["fu_treat_slag_item"] = { name = "dirty", order = "[a]" },
    ["gr_wheel_item"] = { name = "gear", order = "[a]" },
    ["gr_steel_item"] = { name = "iron", order = "[a]" },
    ["advanced-processing-unit"] = { name = "board", order = "[e]" },
    ["bob-rubber"] = { name = "resin", order = "[g]" },
    ["brass-from-atoms"] = { name = "zinc", order = "[a]" },
    ["invar-from-atoms"] = { name = "nickel", order = "[a]" },
    ["gr_materials_charge_item"] = { name = "equipment", order = "[a]" },
    ["gr_materials_charge_remote_item"] = { name = "equipment", order = "[a]" },
    ["gr_data_item"] = { name = "data", order = "[a]" },
    ["fi_plutonium239_item"] = { name = "uranium", order = "[a]" },
    ["bi-wooden-fence"] = { name = "wall", order = "[a]" },
    ["fi_solid_1_item"] = { name = "fuel", order = "[a]" },
    ["fi_solid_2_item"] = { name = "fuel", order = "[a]" },
    ["dirty-water-filtration-1"] = { name = "iron", order = "[z]" },
    ["dirty-water-filtration-2"] = { name = "copper", order = "[z]" },
    ["dirty-water-filtration-3"] = { name = "rare", order = "[z]" },
    ["bismanol"] = { name = "bismuth", order = "[z]" },
    ["mangalloy"] = { name = "manganese", order = "[z]" },
    ["bi-acid"] = { name = "biomass", order = "[z]" },
    ["bi-purified-air-1"] = { name = "seed", order = "[z]" },
    ["bi-purified-air-2"] = { name = "seed", order = "[z]" },
    ["burner-mining-drill"] = { name = "drill", order = "[a]" },
    ["burner-lab"] = { name = "lab", order = "a" },
    ["el_ceramic_1_item"] = { name = "stone", order = "a" },
    ["fullerenes"] = { name = "stone", order = "a" },
    ["graphene"] = { name = "stone", order = "a" },
    ["silver-wire"] = { name = "cable", order = "a" },
    ["optical-fiber"] = { name = "cable", order = "a" },
    ["battery"] = { name = "battery", order = "a" },
    ["bi-battery"] = { name = "battery", order = "a" },
    ["circuit-board"] = { name = "board", order = "a" },
    ["pcb-substrate"] = { name = "board", order = "a" },
    ["mainboard"] = { name = "board", order = "a" },
    ["mlcc"] = { name = "electro", order = "a" },
    ["cpu"] = { name = "electro", order = "a" },
    ["cpu-holmium"] = { name = "electro", order = "a" },
    ["pcb-solder"] = { name = "electro", order = "a" },
    ["solder"] = { name = "electro", order = "a" },
    ["temperature-sensor"] = { name = "electro", order = "a" },
    ["carbon-fiber"] = { name = "beam", order = "a" },
    ["nanotubes"] = { name = "beam", order = "a" },
    ["crucible"] = { name = "beam", order = "a" },
    ["ai-core"] = { name = "beam", order = "a" },
    ["silicon-wafer"] = { name = "beam", order = "a" },
    ["solar-cell"] = { name = "beam", order = "a" },
    ["cermet"] = { name = "beam", order = "a" },
    ["zircaloy-4"] = { name = "beam", order = "a" },
    ["zirconium-tungstate"] = { name = "beam", order = "a" },
    ["ti-sapphire"] = { name = "beam", order = "a" },
    ["iron-stick"] = { name = "beam", order = "a" },
    ["galvanized-steel-plate"] = { name = "beam", order = "a" },
    ["hardened-hull"] = { name = "beam", order = "a" },
    ["hardened-hull-iridium"] = { name = "beam", order = "a" },
    ["se-holmium-solenoid"] = { name = "beam", order = "a" },
    ["se-dynamic-emitter"] = { name = "beam", order = "a" },
    ["nitinol-mesh"] = { name = "beam", order = "a" },
    ["nitinol-mesh-beryllium"] = { name = "beam", order = "a" },
    ["se-space-mirror"] = { name = "beam", order = "a" },
    ["se-space-mirror-alternate"] = { name = "beam", order = "a" },
    ["se-gammaray-detector"] = { name = "beam", order = "a" },
    ["se-nanomaterial"] = { name = "beam", order = "a" },
    ["se-nanomaterial-nanotubes"] = { name = "beam", order = "a" },
    ["se-naquium-cube"] = { name = "beam", order = "a" },
    ["se-naquium-tessaract"] = { name = "beam", order = "a" },
    ["se-naquium-tessaract-alt"] = { name = "beam", order = "a" },
    ["el_ALK_item"] = { name = "fiber", order = "a" },
    ["fi_GFK_item"] = { name = "fiber", order = "a" },
    ["fi_NFK_item"] = { name = "fiber", order = "a" },
    ["fi_empty_solution_item"] = { name = "fiber", order = "a" },
    ["fi_solution_item"] = { name = "fiber", order = "a" },
    ["fu_drill_item"] = { name = "fiber", order = "a" },
    ["fi_modules_base_item"] = { name = "fiber", order = "a" },
    ["silver-brazing-alloy"] = { name = "silver", order = "a" },
    ["gr_kovarex_2_item"] = { name = "space", order = "a" },
    ["gr_kovarex_item"] = { name = "space", order = "a" },
    ["fu_magnet_1_item"] = { name = "space", order = "a" },
    ["fu_KFK_item"] = { name = "fiber", order = "a" },
    ["fu_TIM_item"] = { name = "fiber", order = "a" },
    ["fu_empty_container_item"] = { name = "fiber", order = "a" },
    ["gr_pcb_item"] = { name = "board", order = "a" },
    ["gr_magnet_item"] = { name = "space", order = "a" },
    ["gr_plasma_cube_item"] = { name = "space", order = "a" },
    ["gr_crushed_exotic_item"] = { name = "space", order = "a" },
    ["gr_stabilizer_item"] = { name = "space", order = "a" },
    ["pd-catalyst"] = { name = "cracking", order = "a" },
    ["pt-catalyst"] = { name = "cracking", order = "a" },
    ["advanced-fuel"] = { name = "fuel", order = "a" },
    ["empty-antimatter-fuel-cell"] = { name = "fuel", order = "a" },
    ["charged-antimatter-fuel-cell"] = { name = "fuel", order = "a" },
    ["space-train-battery-pack"] = { name = "fuel", order = "a" },
    ["se-kr-basic-stabilizer"] = { name = "fuel", order = "a" },
    ["matter-stabilizer"] = { name = "fuel", order = "a" },
    ["se-kr-charge-basic-stabilizer"] = { name = "fuel", order = "a" },
    ["charge-stabilizer"] = { name = "fuel", order = "a" },
    ["energy-control-unit"] = { name = "electro", order = "a" },
    ["bp-charged-lithium-sulfur-battery"] = { name = "battery", order = "a" },
    ["lithium-sulfur-battery"] = { name = "battery", order = "a" },
}