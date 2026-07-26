local util_icon = require("scripts.util.icon")

local recipe = {
  type = "recipe",
  name = "linox-recipe_low-temp-separation-of-calcium",
  icons = util_icon.recipe_icon_linox("__space-age__/graphics/icons/calcite.png", 64),
  energy_required = 3,
  enabled = false,
  categories = {"chemistry", "cryogenics"},
  ingredients =
  {
    {type = "fluid", name = "lava", amount = 250},
    {type = "item", name = "stone", amount = 1},
  },
  surface_conditions = __LINOX_SURFACE_CONDITION__,
  results = {{type="item", name="calcite", amount=1}},
  allow_productivity = true,
  auto_recycle = false,
}

data:extend { recipe, }