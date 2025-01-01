# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.cavespider.nausea
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:12f,attributes:[{id:"minecraft:generic.max_health",base:12},{id:"minecraft:generic.movement_speed",base:0.30}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.cavespider.nausea
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:18f,attributes:[{id:"minecraft:generic.max_health",base:18},{id:"minecraft:generic.movement_speed",base:0.33}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.cavespider.nausea
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:24f,attributes:[{id:"minecraft:generic.max_health",base:24},{id:"minecraft:generic.movement_speed",base:0.36}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/cave_spider

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/cave_spider

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute run team join fkbm.spider @s
execute if entity @s[tag=fkbm.spider.baby] run attribute @s minecraft:generic.max_health modifier add fkbm.baby_health -0.5 add_multiplied_base

tag @s add fkbm.touched
