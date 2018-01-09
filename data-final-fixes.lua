-- 
-- Make all cannon projectiles non colliding and position targeted
-- 
data.raw.projectile['cannon-projectile'].collision_box = {{0.0, 0.0}, {0.0, 0.0}}
data.raw.projectile['cannon-projectile'].direction_only = false
data.raw.ammo['cannon-shell'].ammo_type.target_type = "entity"

data.raw.projectile['explosive-cannon-projectile'].collision_box = {{0.0, 0.0}, {0.0, 0.0}}
data.raw.projectile['explosive-cannon-projectile'].direction_only = false
data.raw.ammo['explosive-cannon-shell'].ammo_type.target_type = "position"

data.raw.projectile['uranium-cannon-projectile'].collision_box = {{0.0, 0.0}, {0.0, 0.0}}
data.raw.projectile['uranium-cannon-projectile'].direction_only = false
data.raw.ammo['uranium-cannon-shell'].ammo_type.target_type = "entity"

data.raw.projectile['explosive-uranium-cannon-projectile'].collision_box = {{0.0, 0.0}, {0.0, 0.0}}
data.raw.projectile['explosive-uranium-cannon-projectile'].direction_only = false
data.raw.ammo['explosive-uranium-cannon-shell'].ammo_type.target_type = "position"
