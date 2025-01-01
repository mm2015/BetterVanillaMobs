# alpha chance (get all affinity buffs)
execute run function fkbmtool:rng/get

execute if score #3 fktool >= Random fktool run tag @s add fkbm.alpha

# affinity buffs
execute if entity @s[tag=fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/alpha
execute if entity @s[tag=!fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/touch

# canceler
execute if entity @s[tag=!fkbm.alpha] run return 0

# scale
attribute @s minecraft:generic.scale modifier add fkbm.alpha.scale 0.20 add_multiplied_base

# spe
attribute @s minecraft:generic.movement_speed modifier add fkbm.alpha.speed_nerf -0.10 add_multiplied_base

# armor
data merge entity @s {ArmorDropChances:[0.01F,0.01F,0.01F,0.01F]}
execute if predicate fkbm:mobs/equipment/head_air if predicate fkbmtool:rng/75 run item replace entity @s armor.head with minecraft:netherite_helmet[damage=387,trim={material:"minecraft:gold",pattern:"minecraft:spire"}]
execute if predicate fkbm:mobs/equipment/chest_air if predicate fkbmtool:rng/75 run item replace entity @s armor.chest with minecraft:netherite_chestplate[damage=552,trim={material:"minecraft:gold",pattern:"minecraft:spire"}]
execute if predicate fkbm:mobs/equipment/legs_air if predicate fkbmtool:rng/75 run item replace entity @s armor.legs with minecraft:netherite_leggings[damage=535,trim={material:"minecraft:gold",pattern:"minecraft:spire"}]
execute if predicate fkbm:mobs/equipment/feet_air if predicate fkbmtool:rng/75 run item replace entity @s armor.feet with minecraft:netherite_boots[damage=461,trim={material:"minecraft:gold",pattern:"minecraft:spire"}]
