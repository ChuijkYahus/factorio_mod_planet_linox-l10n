local tint = {175, 175, 175}

data:extend {
  {
    type = "fluid",
    name = "low-concentration-neodymium-solution",
    icons = {
      {
        icon = "__space-age__/graphics/icons/fluid/lithium-brine.png",
        icon_size = 64,
        tint = tint,
      }
    },
    subgroup = "fluid",
    order = "linox-neodymium-a",
    default_temperature = 15,

    base_color = tint,
    flow_color = tint,
  },

  {
    type = "recipe",
    name = "low-concentration-neodymium-solution",
    icons = {
      {
        icon = "__space-age__/graphics/icons/fluid/lithium-brine.png",
        icon_size = 64,
        tint = tint,
      }
    },
    categories = {"chemistry", "cryogenics"},
    subgroup = "fluid-recipes",
    order = "linox-neodymium-a",
    auto_recycle = false,
    enabled = false,
    surface_conditions = __LINOX_SURFACE_CONDITION__,
    ingredients =
    {
      {type = "item", name = "hydrophobic-rare-earth-powder", amount = 1},
      {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    energy_required = 2,
    results =
    {
      {type = "fluid", name = "low-concentration-neodymium-solution", amount = 25},
      {type = "fluid", name = "waste-water", amount = 75, ignored_by_productivity = 75},
    },

    main_product = "low-concentration-neodymium-solution",

    allow_productivity = true,
  },
}