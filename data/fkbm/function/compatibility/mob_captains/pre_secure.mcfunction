# ignore the pack's mobs
tag @e[type=#fkbm:touch_type_safemode,tag=ps-mob.captain,tag=!fkbm.cleared] add fkbm.ignore

# removing attr speed : 15213119-0002-0002-0002-000000000002
execute as @e[type=#fkbm:touch_type_safemode,tag=ps-mob.captain,tag=fkbm.touched,tag=!fkbm.cleared] run attribute @s minecraft:generic.movement_speed modifier remove ps-mob.movement_speed
execute as @e[type=#fkbm:touch_type_safemode,tag=ps-mob.captain,tag=fkbm.touched,tag=!fkbm.cleared] run attribute @s minecraft:generic.movement_speed modifier add ps-mob.movement_speed 0.10 add_multiplied_base
tag @e[type=#fkbm:touch_type_safemode,tag=ps-mob.captain,tag=fkbm.touched,tag=!fkbm.cleared] add fkbm.cleared
