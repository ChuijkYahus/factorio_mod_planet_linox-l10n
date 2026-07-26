local tint = {255, 100, 200}

data:extend {
  {
    type = "fluid",
    name = "high-concentration-erbium-solution",
    icons = {
      {
        icon = "__space-age__/graphics/icons/fluid/lithium-brine.png",
        icon_size = 64,
        tint = tint,
      },
    },
    subgroup = "fluid",
    order = "linox-erbium-b",
    default_temperature = 15,

    base_color = tint,
    flow_color = tint,
  },

  {
    type = "recipe",
    name = "high-concentration-erbium-solution",
    icons = {
      {
        icon = "__space-age__/graphics/icons/fluid/lithium-brine.png",
        icon_size = 64,
        tint = tint,
      }
    },
    categories = {"chemistry", "cryogenics"},
    subgroup = "fluid-recipes",
    order = "linox-erbium-b",
    auto_recycle = false,
    enabled = false,
    surface_conditions = __LINOX_SURFACE_CONDITION__,
    ingredients =
    {
      {type = "fluid", name = "low-concentration-erbium-solution", amount = 100},
      {type = "fluid", name = "light-oil", amount = 200},
    },
    energy_required = 2,
    results =
    {
      {type = "fluid", name = "high-concentration-erbium-solution", amount = 25},
      {type = "fluid", name = "waste-water", amount = 275, ignored_by_productivity = 275},
    },

    main_product = "high-concentration-erbium-solution",

    allow_productivity = true,
  },
}