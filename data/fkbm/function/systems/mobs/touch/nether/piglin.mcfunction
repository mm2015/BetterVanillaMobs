# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# baby (passive mob)
tag @s[tag=fkbm.baby] remove fkbm.baby
execute if predicate fkbm:mobs/is_baby run tag @s add fkbm.baby
execute if entity @s[tag=fkbm.baby] run data merge entity @s {Health:14f,attributes:[{id:"minecraft:generic.max_health",base:14f}]}
execute if entity @s[tag=fkbm.baby] run return run tag @s add fkbm.touched

# into brute
execute run function fkbmtool:rng/get

execute if score #5 fktool > Random fktool at @s run return run function fkbm:systems/mobs/touch/skill/piglin/brute

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.piglin.tracker
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.piglin.trap
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/05 run tag @s add fkbm.piglin.axe
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:20f,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.2},{id:"minecraft:generic.movement_speed",base:0.35}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.piglin.tracker
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.piglin.trap
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/10 run tag @s add fkbm.piglin.axe
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:25f,attributes:[{id:"minecraft:generic.max_health",base:25},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.3},{id:"minecraft:generic.movement_speed",base:0.36}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/50 run tag @s add fkbm.piglin.tracker
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.piglin.trap
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/20 run tag @s add fkbm.piglin.axe
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.4},{id:"minecraft:generic.movement_speed",base:0.37}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/piglin

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/piglin

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if entity @s[tag=fkbm.piglin.tracker] run function fkbm:systems/mobs/touch/skill/piglin/tracker
execute if entity @s[tag=fkbm.piglin.trap] run function fkbm:systems/mobs/touch/skill/piglin/trap
execute if entity @s[tag=fkbm.piglin.axe] run function fkbm:systems/mobs/touch/skill/piglin/axe
execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:crossbow

tag @s add fkbm.touched
