data:extend({
	-- Global
  {
    type = "bool-setting",
		name = "vtk-cannon-turret-wall-explosion-tech",
		setting_type = "startup",
    default_value = true,
    per_user = false,
		order = "1"
  },
  {
    type = "int-setting",
		name = "vtk-cannon-turret-ammo-use",
		setting_type = "startup",
		minimum_value = 1,
		default_value = 1,
		maximum_value = 3,
		order = "2"
  },
})
