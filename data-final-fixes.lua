local tint = { 222, 232, 107 }

for _, fluid in pairs(data.raw.fluid) do
  if string.sub(fluid.name, 1, 9) ~= "parameter" and fluid.name ~= "fluid-unknown" then
    data:extend {
      {
        type = "recipe",
        name = fluid.name.."-outlet",
        categories = {"linox-recipe-category_outlet"},
        enabled = true,
        hidden_in_factoriopedia = true,
        hide_from_player_crafting = true,
        hide_from_signal_gui = true,
        energy_required = 1,
        ingredients = {
          { type = "fluid", name = fluid.name, amount = 100 },
        },
        icons = {{
          icon = "__base__/graphics/icons/offshore-pump.png",
          tint = tint,
        }},
        --icon = "__base__/graphics/icons/offshore-pump.png",
        --icon_size = 64,
        results = {},
      }
    }
  end
end

if settings.startup["linox-settings_hard-mode_use-surface-condition"].value then
  local recipes = {
    "linox-building_advanced-rocket-silo",
    "linox-building_chemical-filter",
    "linox-building_chemical-tank",
    "linox-building_core-roboport",
    "linox-building_erbium-beacon",
    "linox-building_huge-heat-exchanger",
    "linox-building_linox-supercomputer",
    "linox-building_mantle-extractor",
    "linox-building_neodymium-bulk-inserter",
    "linox-building_neodymium-permanent-magnet-generator",
    "linox-building_neodymium-stack-inserter",
    "linox-building_outlet",
    "linox_samarium-construction-robot",
    "linox_samarium-logistic-robot",
    "linox-building_sintering-machine",
    "linox-building_turbo-pump",
  }

  for _, r in pairs(recipes) do
    data.raw["recipe"][r].surface_conditions = __LINOX_SURFACE_CONDITION__
  end
end

if settings.startup["linox-settings_easy-mode_anywhere-mantle-extractor"].value then
  data.raw["assembling-machine"]["linox-building_mantle-extractor"].surface_conditions = nil
end

if settings.startup["linox-settings_hard-mode_enable-science-pack_aquilo"].value or settings.startup["linox-settings_hard-mode_enable-science-pack_promethium"].value then
  for _, lab in pairs(data.raw["lab"]) do
    if lab.inputs then
      for _, inputs in pairs(lab.inputs) do
        if inputs == "cryogenic-science-pack" or inputs == "promethium-science-pack" then
          table.insert(lab.inputs, "linox-item_linox-science-pack")
          break
        end
      end
    end
  end

  if settings.startup["linox-settings_hard-mode_enable-science-pack_aquilo"].value then
    table.insert(data.raw["technology"]["planet-discovery-aquilo"].unit.ingredients, {"linox-item_linox-science-pack", 1})

    for _, t in pairs(data.raw["technology"]) do
      if t.unit and t.unit.ingredients then
        local b = false
        for _, ingredients in pairs(t.unit.ingredients) do
          if ingredients[1] == "cryogenic-science-pack" then
            b = true
          elseif ingredients[1] == "promethium-science-pack" then
            b = false
            break
          end
        end

        if b then
          table.insert(t.unit.ingredients, {"linox-item_linox-science-pack", 1})
        end
      end
    end
  end

  if settings.startup["linox-settings_hard-mode_enable-science-pack_promethium"].value then
    if not settings.startup["linox-settings_hard-mode_enable-science-pack_aquilo"].value then
      table.insert(data.raw["technology"]["promethium-science-pack"].unit.ingredients, {"linox-item_linox-science-pack", 1})
    end

    for _, t in pairs(data.raw["technology"]) do
      if t.unit and t.unit.ingredients then
        for _, ingredients in pairs(t.unit.ingredients) do
          if ingredients[1] == "promethium-science-pack" then
            table.insert(t.unit.ingredients, {"linox-item_linox-science-pack", 1})
            break
          end
        end
      end
    end
  end
end