# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# get size
execute store result score @s fkbm.var run data get entity @s Size 1

# affinity
execute if score @s fkbm.var matches 4 run function fkbm:systems/mobs/touch/affinity/mobs/slime

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.slime.fusion
execute if score #IndividualDiff fkbm.options matches 1 if score @s fkbm.var matches 0 run data merge entity @s {Health:4f,attributes:[{id:"minecraft:generic.max_health",base:4},{id:"minecraft:generic.knockback_resistance",base:0.01}]}
execute if score #IndividualDiff fkbm.options matches 1 if score @s fkbm.var matches 1..2 run data merge entity @s {Health:8f,attributes:[{id:"minecraft:generic.max_health",base:8},{id:"minecraft:generic.knockback_resistance",base:0.20}]}
execute if score #IndividualDiff fkbm.options matches 1 if score @s fkbm.var matches 3..5 run data merge entity @s {Health:16f,attributes:[{id:"minecraft:generic.max_health",base:16},{id:"minecraft:generic.knockback_resistance",base:0.50}]}
execute if score #IndividualDiff fkbm.options matches 1 if score @s fkbm.var matches 6.. run data merge entity @s {Health:32f,attributes:[{id:"minecraft:generic.max_health",base:32},{id:"minecraft:generic.knockback_resistance",base:0.80}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.slime.fusion
execute if score #IndividualDiff fkbm.options matches 2 if score @s fkbm.var matches 0 run data merge entity @s {Health:6f,attributes:[{id:"minecraft:generic.max_health",base:6},{id:"minecraft:generic.knockback_resistance",base:0.01}]}
execute if score #IndividualDiff fkbm.options matches 2 if score @s fkbm.var matches 1..2 run data merge entity @s {Health:12f,attributes:[{id:"minecraft:generic.max_health",base:12},{id:"minecraft:generic.knockback_resistance",base:0.20}]}
execute if score #IndividualDiff fkbm.options matches 2 if score @s fkbm.var matches 3..5 run data merge entity @s {Health:24f,attributes:[{id:"minecraft:generic.max_health",base:24},{id:"minecraft:generic.knockback_resistance",base:0.50}]}
execute if score #IndividualDiff fkbm.options matches 2 if score @s fkbm.var matches 6.. run data merge entity @s {Health:48f,attributes:[{id:"minecraft:generic.max_health",base:48},{id:"minecraft:generic.knockback_resistance",base:0.80}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/99 run tag @s add fkbm.slime.fusion
execute if score #IndividualDiff fkbm.options matches 3 if score @s fkbm.var matches 0 run data merge entity @s {Health:8f,attributes:[{id:"minecraft:generic.max_health",base:8},{id:"minecraft:generic.knockback_resistance",base:0.01}]}
execute if score #IndividualDiff fkbm.options matches 3 if score @s fkbm.var matches 1..2 run data merge entity @s {Health:16f,attributes:[{id:"minecraft:generic.max_health",base:16},{id:"minecraft:generic.knockback_resistance",base:0.20}]}
execute if score #IndividualDiff fkbm.options matches 3 if score @s fkbm.var matches 3..5 run data merge entity @s {Health:32f,attributes:[{id:"minecraft:generic.max_health",base:32},{id:"minecraft:generic.knockback_resistance",base:0.50}]}
execute if score #IndividualDiff fkbm.options matches 3 if score @s fkbm.var matches 6.. run data merge entity @s {Health:64f,attributes:[{id:"minecraft:generic.max_health",base:64},{id:"minecraft:generic.knockback_resistance",base:0.80}]}

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/slime

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
scoreboard players set @s[tag=fkbm.slime.fusion] fkbm.cd1 0

tag @s add fkbm.touched
