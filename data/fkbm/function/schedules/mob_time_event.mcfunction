# wolf night attack
execute if score #BaseDifficulty fkbm.options matches 1.. if score WolfNightAttack fkbm.options matches 1 if predicate fkbmtool:time/period/night as @e[type=minecraft:wolf,tag=fkbm.wolf.angry] at @s unless data entity @s Owner run function fkbm:systems/mobs/events/wolf_night_attack

# polar bear attack
execute if score #BaseDifficulty fkbm.options matches 1.. if score PolarbearAngry fkbm.options matches 1 as @e[type=minecraft:polar_bear,tag=fkbm.polar_bear.angry] at @s run function fkbm:systems/mobs/events/polar_bear_attack

# skeleton arrows pickup
execute if score #BaseDifficulty fkbm.options matches 1.. if score EntityArrowPickup fkbm.options matches 1 as @e[type=minecraft:arrow] run data modify entity @s pickup set value 1b


schedule function fkbm:schedules/mob_time_event 10s
