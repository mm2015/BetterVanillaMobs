# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.spider.cobweb
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/15 run tag @s add fkbm.spider.stickypath
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.spider.mommy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/03 run tag @s add fkbm.spider.cocoon
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:20f,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.movement_speed",base:0.32}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.spider.cobweb
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.spider.stickypath
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.spider.mommy
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/05 run tag @s add fkbm.spider.cocoon
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:25f,attributes:[{id:"minecraft:generic.max_health",base:25},{id:"minecraft:generic.movement_speed",base:0.34}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.spider.cobweb
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/45 run tag @s add fkbm.spider.stickypath
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.spider.mommy
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/10 run tag @s add fkbm.spider.cocoon
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.movement_speed",base:0.36}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/spider

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/spider

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute run team join fkbm.spider @s
execute if entity @s[tag=fkbm.spider.mommy] run function fkbm:systems/mobs/touch/skill/spider/mommy
scoreboard players set @s[tag=fkbm.spider.mommy] fkbm.cd1 0
scoreboard players set @s[tag=fkbm.spider.cocoon] fkbm.cd2 0

tag @s add fkbm.touched
