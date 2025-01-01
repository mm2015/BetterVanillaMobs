# tag
tag @s add fkbm.affinity.health

# health multi
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.max_health modifier add fkbm.affinity.health_multi 0.30 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.max_health modifier add fkbm.affinity.health_multi 0.40 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.max_health modifier add fkbm.affinity.health_multi 0.50 add_multiplied_base

# health flat
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.max_health modifier add fkbm.affinity.health_flat 6 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.max_health modifier add fkbm.affinity.health_flat 8 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.max_health modifier add fkbm.affinity.health_flat 10 add_value

# set current health
execute store result storage fkbm:vars tmp double 1 run attribute @s minecraft:generic.max_health get 1
data modify entity @s Health set from storage fkbm:vars tmp
