function prepare_unlock(inputs) -- turret_unlock{name, icon, effects, prerequisites, count, ingredients, time, order}
return
{
	type = "technology",
	name = inputs.name,
	icon_size = 128,
	icon = inputs.icon,
	effects = inputs.effects,
	prerequisites = inputs.prerequisites,
	unit =
	{
		count = inputs.count,
		ingredients = inputs.ingredients,
		time = inputs.time
	},
	upgrade = true,
	order = inputs.order,
}
end

local ingredients_list = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}, {"high-tech-science-pack", 1}, {"space-science-pack", 1}}

data:extend({prepare_unlock{
  name = "vtk-cannon-turret-unlock",
  icon = "__vtk-cannon-turret__/graphics/technology/cannon-turret-tech.png",
  effects = 
  {
    {
      type = "unlock-recipe",
      recipe = "vtk-cannon-turret"
    }
  },
	prerequisites = {"turrets", "tanks"}, 
	count = 100,
  ingredients = {
    {"science-pack-1", 1},
    {"science-pack-2", 1},
    {"science-pack-3", 1},
    {"military-science-pack", 1},
  },
  time = 30,
  order = "e-c-c-a"
}})