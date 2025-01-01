# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# baby
tag @s[tag=fkbm.baby] remove fkbm.baby
execute if predicate fkbm:mobs/is_baby run tag @s add fkbm.baby

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.hoglin.hotblood
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 if entity @s[tag=!fkbm.baby] run tag @s add fkbm.hoglin.stomp
execute if score #IndividualDiff fkbm.options matches 1 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.armor",base:6}]}
execute if score #IndividualDiff fkbm.options matches 1 if entity @s[tag=fkbm.baby] run data merge entity @s {Attributes:[{id:"minecraft:generic.movement_speed",base:0.34},{id:"minecraft:generic.armor",base:4}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.hoglin.hotblood
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 if entity @s[tag=!fkbm.baby] run tag @s add fkbm.hoglin.stomp
execute if score #IndividualDiff fkbm.options matches 2 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:60f,attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.movement_speed",base:0.38},{id:"minecraft:generic.armor",base:8}]}
execute if score #IndividualDiff fkbm.options matches 2 if entity @s[tag=fkbm.baby] run data merge entity @s {Attributes:[{id:"minecraft:generic.movement_speed",base:0.35},{id:"minecraft:generic.armor",base:6}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.hoglin.hotblood
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 if entity @s[tag=!fkbm.baby] run tag @s add fkbm.hoglin.stomp
execute if score #IndividualDiff fkbm.options matches 3 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:70f,attributes:[{id:"minecraft:generic.max_health",base:70},{id:"minecraft:generic.movement_speed",base:0.42},{id:"minecraft:generic.armor",base:10}]}
execute if score #IndividualDiff fkbm.options matches 3 if entity @s[tag=fkbm.baby] run data merge entity @s {Attributes:[{id:"minecraft:generic.movement_speed",base:0.36},{id:"minecraft:generic.armor",base:8}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/hoglin

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/hoglin

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if entity @s[tag=fkbm.hoglin.hotblood] run data merge entity @s {IsImmuneToZombification:1b}
scoreboard players set @s[tag=fkbm.hoglin.stomp] fkbm.cd1 0

tag @s add fkbm.touched
