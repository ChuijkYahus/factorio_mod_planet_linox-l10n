data:extend {

  {
    type = "bool-setting",
    name = "linox-settings_enable-moshine-neodymium-recipe",
    setting_type = "startup",
    default_value = true,
    order = "a1",
  },

  {
    type = "bool-setting",
    name = "linox-settings_allow-hopper-launcher",
    setting_type = "startup",
    default_value = true,
    order = "a2",
  },

  {
    type = "bool-setting",
    name = "linox-settings_compatibility-aai-signal-transmission",
    setting_type = "startup",
    default_value = true,
    order = "a3",
  },

  {
    type = "bool-setting",
    name = "linox-settings_compatibility-distribution-request-planner",
    setting_type = "startup",
    default_value = true,
    order = "a4",
  },


  {
    type = "bool-setting",
    name = "linox-settings_easy-mode_remove-vanilla-circuit-collision",
    setting_type = "startup",
    default_value = false,
    order = "b1",
  },

  {
    type = "bool-setting",
    name = "linox-settings_easy-mode_anywhere-mantle-extractor",
    setting_type = "startup",
    default_value = false,
    order = "b2",
  },



  {
    type = "bool-setting",
    name = "linox-settings_hard-mode_no-logistic-system",
    setting_type = "startup",
    default_value = false,
    order = "c1",
  },

  {
    type = "bool-setting",
    name = "linox-settings_hard-mode_no-starter-pack",
    setting_type = "startup",
    default_value = false,
    order = "c2",
  },

  {
    type = "bool-setting",
    name = "linox-settings_hard-mode_use-surface-condition",
    setting_type = "startup",
    default_value = false,
    order = "c3",
  },

  {
    type = "bool-setting",
    name = "linox-settings_hard-mode_enable-science-pack_aquilo",
    setting_type = "startup",
    default_value = false,
    order = "c4",
  },

  {
    type = "bool-setting",
    name = "linox-settings_hard-mode_enable-science-pack_promethium",
    setting_type = "startup",
    default_value = false,
    order = "c5",
  },



  {
    type = "string-setting",
    name = "linox-settings_rbp-example-multiplay-language",
    setting_type = "runtime-global",
    default_value = "auto",
    allowed_values = {"auto", "en", "ko", "ru"},
  },

  

  {
    type = "string-setting",
    name = "linox-settings_rbp-example-local-language",
    setting_type = "runtime-per-user",
    default_value = "auto",
    allowed_values = {"auto", "en", "ko", "ru"},
  },

  {
    type = "bool-setting",
    name = "linox-settings_elevator-boarding-alert",
    setting_type = "runtime-per-user",
    default_value = true
  },
}

require("modules/compatibility/any-planet-start").settings()