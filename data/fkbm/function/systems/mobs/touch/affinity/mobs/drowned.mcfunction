# alpha chance (get all affinity buffs)
execute run function fkbmtool:rng/get

execute if score #3 fktool >= Random fktool run tag @s add fkbm.alpha

# affinity buffs
execute if entity @s[tag=fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/alpha
execute if entity @s[tag=!fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/touch

# canceler
execute if entity @s[tag=!fkbm.alpha] run return 0

# scale
attribute @s minecraft:generic.scale modifier add fkbm.alpha.scale 0.15 add_multiplied_base

# spe
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.water_movement_efficiency modifier add fkbm.affinity.movement_efficiency .2 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.water_movement_efficiency modifier add fkbm.affinity.movement_efficiency .4 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.water_movement_efficiency modifier add fkbm.affinity.movement_efficiency .6 add_value
