# summon
execute if entity @s[tag=fkbm.witch.summon,scores={fkbm.var=..0}] if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] unless entity @e[tag=fkbm.witch.minion,distance=..12,limit=1] run function fkbm:systems/mobs/loop/skill/witch/summon
scoreboard players operation @s[tag=fkbm.witch.summon,scores={fkbm.var=1..}] fkbm.var -= MobGameplayLatency fkbm.options

# zonya
execute if entity @s[tag=fkbm.witch.zonya,scores={fkbm.cd1=..0}] run function fkbm:systems/mobs/loop/skill/witch/zonya_check
scoreboard players operation @s[tag=fkbm.witch.zonya,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
