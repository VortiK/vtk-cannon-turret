require("prototypes.cannon-turret")
require("prototypes.cannon-turret-ammo")
require("prototypes.technology-cannon-turret")
require("prototypes.explosive-shells-scortch")


if mods["space-age"] then
  table.insert(data.raw["ammo-turret"]["vtk-cannon-turret"], {heating_energy = "50kW"})
  table.insert(data.raw["ammo-turret"]["vtk-cannon-turret-heavy"], {heating_energy = "100kW"})
end

if settings.startup["vtk-cannon-turret-ammo-use"].value == 1 then
  data.raw["ammo-turret"]["vtk-cannon-turret"]["attack_parameters"]["ammo_categories"] = {"cannon-shell-magazine"}
  data.raw["ammo-turret"]["vtk-cannon-turret-heavy"]["attack_parameters"]["ammo_categories"] = {"cannon-shell-magazine"}
end
if settings.startup["vtk-cannon-turret-ammo-use"].value == 3 then
  data.raw["ammo-turret"]["vtk-cannon-turret"]["attack_parameters"]["ammo_categories"] = {"cannon-shell-magazine", "cannon-shell"}
  data.raw["ammo-turret"]["vtk-cannon-turret-heavy"]["attack_parameters"]["ammo_categories"] = {"cannon-shell-magazine", "cannon-shell"}
end

if settings.startup["vtk-cannon-turret-ammo-use"].value == 1 or
   settings.startup["vtk-cannon-turret-ammo-use"].value == 3 then
  table.insert(data.raw["technology"]["vtk-cannon-turret-unlock"]["effects"], { type = "unlock-recipe", recipe = "cannon-shell-magazine" })
  table.insert(data.raw["technology"]["vtk-cannon-turret-unlock"]["effects"],  { type = "unlock-recipe", recipe = "explosive-cannon-shell-magazine" })
end
