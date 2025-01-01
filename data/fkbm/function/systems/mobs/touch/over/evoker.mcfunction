# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/30 run tag @s add fkbm.evoker.groupregen
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.evoker.root
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.armor",base:4},{id:"minecraft:generic.movement_speed",base:0.50}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.evoker.groupregen
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.evoker.root
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:36f,attributes:[{id:"minecraft:generic.max_health",base:36},{id:"minecraft:generic.armor",base:7},{id:"minecraft:generic.movement_speed",base:0.53}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/70 run tag @s add fkbm.evoker.groupregen
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/50 run tag @s add fkbm.evoker.root
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:42f,attributes:[{id:"minecraft:generic.max_health",base:42},{id:"minecraft:generic.armor",base:10},{id:"minecraft:generic.movement_speed",base:0.56}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/evoker

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/evoker

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
scoreboard players set @s[tag=fkbm.evoker.groupregen] fkbm.cd1 0
scoreboard players set @s[tag=fkbm.evoker.root] fkbm.var 0

tag @s add fkbm.touched
