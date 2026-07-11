local stor = require("scripts.drv.storage")

stor.ensure("game_data.inductor", {
  enable = false,
  current = 0.0,
  V_div_L = 0,
})

local SIM_UPS = 60.0
local SIM_FREQ = 500.0
local SIM_FREQ_T = 1.0/SIM_FREQ
local SIM_FREQ_C =  math.floor(SIM_FREQ/SIM_UPS);
local SIM_R = 0.001
local SIM_L = 0.007
local SIM_R_DIV_L = (SIM_R / SIM_L) * SIM_FREQ_T

--__DRV_SIMULATION_INDUCTOR_DATA__ = {
--  enable = false,
--  voltage = 0.0,
--  current = 0.0,
--  resistance = 0.001,
--  reluctance = 0.007,
--}

local __MODULE__ = {
  current = 0
}

__MODULE__.tick = function()
  local stor = storage.game_data.inductor

  if stor.enable then
    for i = 0, SIM_FREQ_C do
      --current = current + ((inductor_data.V_div_L) - (SIM_R_DIV_L * current)) * SIM_FREQ_T
      stor.current = stor.current + ((stor.V_div_L) - (SIM_R_DIV_L * stor.current))
    end
  else
    stor.current = 0.0
  end
  __MODULE__.current = stor.current;
end

__MODULE__.apply_voltage = function(volt)
  storage.game_data.inductor.V_div_L = (volt / SIM_L) * SIM_FREQ_T
end

__MODULE__.enable = function(en)
  local stor = storage.game_data.inductor
  stor.enable = en
  if en == 0 then
    __MODULE__.current = 0
    stor.current = 0
    stor.V_div_L = 0
  end
end

return __MODULE__