[![foundrygg.com](https://img.shields.io/badge/foundrygg-4a1402?style=for-the-badge&logo=vercel&logoColor=white)](https://foundrygg.com)[![Discord](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/HgYANakDmY)
- - - 
In version 2.0, there is an issue where the Foundry produces incorrect recycling results. You can fix this by using the mod below.
https://mods.factorio.com/mod/linox-foundry-fix
- - -
Planet Linox - Probably the smallest planet in Factorio.
===
For some reason, this planet orbits extremely close to its sun. Its orbit is astronomically impossible, so something must have happened to this planet.

Because it’s so close to the sun, the surface has completely melted into a lava sea. Even if you explore it, it seems like a completely useless planet… Wait, isn’t there something over there?
- - -
Surviving in a confined space
===
The surface of this planet is entirely covered by a sea of lava, so nothing can be done above ground. However, someone built a facility here that allows access to the deep underground. We must explore the planet’s secrets from this facility and escape again.
- - -
Recursive Blueprint System
===
This facility was not built for factory construction. Because of that, the space is so limited that building a proper factory let alone a large-scale one is nearly impossible. However, even in a place like this, there is a way to build a meaningful factory. That solution is the recursive blueprint system.

![welcome_on_linox](https://raw.githubusercontent.com/xeon0527/factorio_mod_planet_linox/main/.web/tips.mp4)

Through this system, you must forget the factories you knew before and rethink a completely new factory structure suited for this place.
- - -
Rewards
===
 * **Advanced rocket silo**
 * **Mantle extractor**
 * **Core roboport**
 * **Turbo pump**
 * **Sintering machine**
 * **Outlet**
 * **Neodymium permanent magnet generator**
 * **Erbium beacon**
 * **Rare earth Productivity Technology**
 * **Sintering machine Productivity**
 * **Samarium Robotics**
 * **Neodymium permanent magnet inserter**
- - -
Mantle Extrator API
===
If you want to prevent the Mantle Extractor from being installed on your own planet, you can add the `linox-no-mantle` surface property with a value of 1 or higher to prevent it from being placed. This feature is supported starting with Linox 1.8.3.

**Note:** The `linox-no-mantle` Surface Property is only effective when the Linox Mod is present. It is safer to add this property separately during the `data-updates` or `data-final-fixes` stage.

&nbsp;
```
if mods["linox"] then
  data.raw["planet"]["(Your Planet Name)"].surface_properties["linox-no-mantle"] = 1
end
```
- - -
Recommended companion mods
===
 * [Blueprint Sandboxes](https://mods.factorio.com/mod/blueprint-sandboxes)  
 It makes editing blueprints significantly easier.

 * [Squeak Through 2](https://mods.factorio.com/mod/squeak-through-2)  
 Since space is extremely limited, being able to walk between buildings makes gameplay much more comfortable.

 * [Compact circuits](https://mods.factorio.com/mod/compaktcircuit)  
 (For advanced users) On Linox, circuit builds can feel overwhelmingly bulky. This mod solves that problem entirely.
- - -
Compatible Mods
===
 * [Pelagos](https://mods.factorio.com/mod/pelagos)  
 In some processes, a "Calciner" can be used.

 * [Moshine](https://mods.factorio.com/mod/Moshine)  
 The Neodymium Crushing setting can be enabled.

 * [Any Planet Start](https://mods.factorio.com/mod/any-planet-start)  
 Any Planet Start is officially supported.

 * [Planet Hopper](https://mods.factorio.com/mod/Planet-Hopper)  
 You can configure it so that the Hopper Launcher can be placed on terminal platform tiles.

 * [Multi-Surface Promethium Plate Recipe](https://mods.factorio.com/mod/multi_surface_promethium_plate_recipe)  
 This is a project where all planets participate in a single Promethium recipe chain. Every planet contributes to the production of the Promethium science pack.

 * [Even Pickier Dollies](https://mods.factorio.com/mod/even-pickier-dollies)  
 Using that mod prevents certain special entities from being forcibly moved.
- - -
Thank you for playing
===
I plan to focus on developing this mod for the time being, and I will do my best to address any feedback regarding game balance or bugs as quickly as possible.   
- - -
Special Thanks
===
 * Earendel - Thank you for providing the Space Exploration assets. (https://www.patreon.com/earendel, https://discord.gg/ymjUVMv)
 * Hurricane046 - Thank you for providing high-quality Factorio-style graphics.
 * Efremiros - Thank you for providing the Russian translation.
 * ChuijkYahus - Thank you for providing the Chinese translation.
 * [Natha](https://mods.factorio.com/user/natha) - Provided an idea for connecting the two surfaces. Thank you.
 * [FoxLBA](https://mods.factorio.com/user/FoxLBA) - Thank you for maintaining the Recursive Blueprint System, which is a core mechanic of Linox.
 * SkunkMaster, zhuyifei1999 - Thank you for providing the example circuit designs and various ideas.