# firework rocket
execute if entity @s[tag=fkbm.pillager.firework,scores={fkbm.cd1=..0}] unless data entity @s HandItems[0].components."minecraft:charged_projectiles"[0].components."minecraft:fireworks" run function fkbm:systems/mobs/loop/skill/pillager/firework
scoreboard players operation @s[tag=fkbm.pillager.firework,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
