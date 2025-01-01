# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.skeleton.torch
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.skeleton.fireresist
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.skeleton.smokebomb
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.skeleton.sword
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.skeleton.shield
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:20f,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.1},{id:"minecraft:generic.movement_speed",base:0.23}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.skeleton.torch
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.skeleton.fireresist
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.skeleton.smokebomb
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.skeleton.sword
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.skeleton.shield
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.2},{id:"minecraft:generic.movement_speed",base:0.26}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.skeleton.torch
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.skeleton.fireresist
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.skeleton.smokebomb
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.skeleton.sword
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/50 run tag @s add fkbm.skeleton.shield
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.3},{id:"minecraft:generic.movement_speed",base:0.28}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/skeleton

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/skeleton

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:bow
execute if score SkeletonFireResistance fkbm.options matches 1..2 if entity @s[tag=fkbm.skeleton.fireresist] run function fkbm:systems/mobs/touch/skill/skeleton/fire_resist
execute if entity @s[tag=fkbm.skeleton.shield] run item replace entity @s weapon.offhand with minecraft:shield[damage=316,custom_name='{"italic":false,"text":"Buckler"}',item_name='{"italic":false,"text":"Buckler"}']
scoreboard players set @s[tag=fkbm.skeleton.shield] fkbm.cd1 0

tag @s add fkbm.touched
