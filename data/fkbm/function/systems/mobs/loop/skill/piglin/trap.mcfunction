# place trap
execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet rotated ~ 0 positioned ^ ^-.01 ^1.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"mycelium"},Radius:.7f,Duration:1200,DurationOnUse:0f,Age:0,CustomName:'{"text":"Piglin Trap"}',Tags:["fkbm.piglin.trap","fkbm.piglin.trap.init"]}
execute as @e[type=minecraft:area_effect_cloud,tag=fkbm.piglin.trap.init,distance=..3,limit=1] at @s run function fkbm:systems/mobs/loop/skill/piglin/trap_init

# fx
execute anchored eyes positioned ^ ^-.4 ^.3 run particle minecraft:mycelium ~ ~ ~ .1 .1 .1 0 10

# cd
scoreboard players operation @s fkbm.cd1 = #30 fktool

# loop
schedule function fkbm:systems/mobs/loop/skill/piglin/trap_loop 1t
