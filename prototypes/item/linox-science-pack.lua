local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend {
  {
    type = "tool",
    name = "linox-item_linox-science-pack",
    localised_description = {"item-description.linox-item_linox-science-pack"},
    icon = "__linox__/graphics/icons/linox-science-pack_64.png",
    icon_size = 64,
    subgroup = "science-pack",
    color_hint = { text = "L" },
    order = "linox-g",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    weight = 1 * kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
  },
}



local recipe = {
  type = "recipe",
  name = "linox-item_linox-science-pack",
  categories = {"crafting-with-fluid", "electromagnetics"},
  energy_required = 1,
  enabled = false,
  ingredients =
  {
    {type = "item", name = "linox-item_lava-data-card", amount = 1},
    {type = "item", name = "linox-item_rare-earth-data-card", amount = 1},
    {type = "item", name = "linox-item_samarium-data-card", amount = 1},
    {type = "item", name = "linox-item_dysprosium-data-card", amount = 1},
    {type = "item", name = "linox-item_neodymium-data-card", amount = 1},
    {type = "item", name = "linox-item_erbium-data-card", amount = 1},

  },
  surface_conditions = __LINOX_SURFACE_CONDITION__,
  results = {{type="item", name="linox-item_linox-science-pack", amount=1}},
  allow_productivity = true,
  auto_recycle = false,
}

data:extend { recipe, }