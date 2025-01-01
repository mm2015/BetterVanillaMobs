# fusion
execute if entity @s[tag=fkbm.slime.fusion,tag=!fkbm.slime.fusion.dead,scores={fkbm.cd1=..0}] at @s run function fkbm:systems/mobs/loop/skill/slime/fusion
scoreboard players operation @s[tag=fkbm.slime.fusion,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
