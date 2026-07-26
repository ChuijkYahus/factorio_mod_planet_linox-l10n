data:extend {
  {
    type = "recipe",
    name = "linox-recipe_rare-earth-refining",
    icon = "__linox__/graphics/icons/rare-earth-powder.png",
    energy_required = 1,
    enabled = false,
    auto_recycle = false,
    categories = {"chemistry", "cryogenics"},
    surface_conditions = __LINOX_SURFACE_CONDITION__,
    ingredients =
    {
      {type="item", name="stone", amount=100},
      {type = "fluid", name = "sulfuric-acid", amount = 200},
    },
    results = {
      {type="item", name="rare-earth-powder", amount = 2},
    },
    --allow_decomposition = false,
    allow_productivity = true,
    --allow_quality = false,
  },
}