# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.vindicator.rage
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.vindicator.swordman
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.vindicator.worker
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:24f,attributes:[{id:"minecraft:generic.max_health",base:24},{id:"minecraft:generic.armor",base:4},{id:"minecraft:generic.knockback_resistance",base:0.3}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.vindicator.rage
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.vindicator.swordman
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.vindicator.worker
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.armor",base:7},{id:"minecraft:generic.knockback_resistance",base:0.4}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/50 run tag @s add fkbm.vindicator.rage
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/40 run tag @s add fkbm.vindicator.swordman
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.vindicator.worker
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:36f,attributes:[{id:"minecraft:generic.max_health",base:36},{id:"minecraft:generic.armor",base:10},{id:"minecraft:generic.knockback_resistance",base:0.5}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/vindicator

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/vindicator

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if entity @s[tag=fkbm.vindicator.swordman,tag=fkbm.vindicator.worker] run tag @s remove fkbm.vindicator.worker
execute if entity @s[tag=fkbm.vindicator.swordman] run function fkbm:systems/mobs/touch/skill/vindicator/swordman
execute if entity @s[tag=fkbm.vindicator.worker] run function fkbm:systems/mobs/touch/skill/vindicator/dummy
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:iron_axe

tag @s add fkbm.touched
