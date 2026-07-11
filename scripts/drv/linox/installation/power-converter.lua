local bootstrap = require("scripts.drv.bootstrap")
local circuit = require("scripts.util.circuit")
local surface_facility = require("scripts.svc.surface.linox-facility")
local vec = require("scripts.util.vector")
local stor = require("scripts.drv.storage")

stor.ensure("game_data.power_converter_entity", {
  pc_entity = nil,
  input = nil,
  output = nil,
  reactive_entity = nil,
})

local function _create_circuit_entity(name, pos)
  local surface = surface_facility.get()

  local e = surface.create_entity{
    name = name,
    position = pos,
    force = game.forces["player"],
    create_build_effect_smoke = false,
  }
  e.destructible = false
  e.minable_flag = false
  e.rotatable = false
  e.operable = false
  return e
end

local __MODULE__ = {}

--bootstrap.create_tick_handler(function()
--  local surface = surface_facility.get()
--  if surface == nil then return end
--
--  if __DRV_LINOX_POWER_CONVERTER_ENTITY__ == nil or __DRV_LINOX_POWER_CONVERTER_ENTITY__.valid == false then
--    __DRV_LINOX_POWER_CONVERTER_ENTITY__ = nil;
--    local find_entities = surface.find_entities_filtered {
--      name = "linox-npc_power-converter",
--      area = {{-30, -30}, {30, 30}},
--      limit = 1,
--    }
--    
--    if find_entities[1] then
--      __DRV_LINOX_POWER_CONVERTER_ENTITY__ = find_entities[1]
--    else return end
--  end
--end);



__MODULE__.input_type = {
  enable_control  = { quality = "normal", type = "virtual", name = "signal-E" },
  turn_on         = { quality = "normal", type = "virtual", name = "signal-I" },
}

__MODULE__.output_type = {
  current_power   = { quality = "normal", type = "virtual", name = "signal-P" },
  output_power    = { quality = "normal", type = "virtual", name = "signal-O" },

  --resistance = { quality = "normal", type = "virtual", name = "signal-R" },
  --reluctance = { quality = "normal", type = "virtual", name = "signal-L" },
}

__MODULE__.get_entities = function()
  local surface = surface_facility.get()
  if surface == nil then return nil end

  local stor = storage.game_data.power_converter_entity

  if stor.pc_entity == nil or stor.pc_entity.valid == false then
    stor.pc_entity = nil;
    local find_entities = surface.find_entities_filtered {
      name = "linox-npc_power-converter",
      area = {{-30, -30}, {30, 30}},
      limit = 1,
    }
    
    if find_entities[1] then
      stor.pc_entity = find_entities[1]
    else
      return nil
    end
  end

  if stor.input == nil or stor.input.valid == false then
    local entity_pos = vec.add(stor.pc_entity.position, {x = -0.5, y = 0.5})
    stor.input = surface.find_entity("linox-npc_power-converter-circuit-input", entity_pos);
    if not stor.input then
      stor.input = _create_circuit_entity("linox-npc_power-converter-circuit-input", entity_pos)
    end
  end


  if stor.output == nil or stor.output.valid == false then
    local entity_pos = vec.add(stor.pc_entity.position, {x = 0.5, y = 0.5})
    stor.output = surface.find_entity("linox-npc_power-converter-circuit-output", entity_pos);
    if not stor.output then
      stor.output = _create_circuit_entity("linox-npc_power-converter-circuit-output", entity_pos)
    end
  end

  local tech = game.forces["player"].technologies["linox-technology_power-converter"]
  if tech.researched and (stor.reactive_entity == nil or stor.reactive_entity.valid == false) then
    stor.reactive_entity = surface.find_entity("linox-hidden_reactive-power", {0,0})
  end

  return stor
end

__MODULE__.get_signal = function(input_type)
  local stor = storage.game_data.power_converter_entity
  if stor.input and stor.input.valid then
    return circuit.get_entity_signal(stor.input, circuit.cable.all, input_type);
  end
  return 0;
end

__MODULE__.set_signal = function(output_type, slot, value)
  local stor = storage.game_data.power_converter_entity
  if stor.output and stor.output.valid then
    circuit.set_entity_signal(stor.output, slot, output_type, value);
  end
end


return __MODULE__