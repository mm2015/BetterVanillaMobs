# gunfreeze
# see advancement

# vortex
execute if entity @s[tag=fkbm.enderman.vortex,nbt=!{AngerTime:0}] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] run scoreboard players operation @s fkbm.var += MobGameplayLatency fkbm.options
execute if entity @s[tag=fkbm.enderman.vortex,scores={fkbm.var=30..}] run function fkbm:systems/mobs/loop/skill/enderman/vortex_nether
scoreboard players operation @s[tag=fkbm.enderman.vortex,scores={fkbm.var=1..}] fkbm.var -= MobGameplayLatency fkbm.options

# lookbreak
execute if entity @s[tag=fkbm.enderman.lookbreak,scores={fkbm.cd1=..0},nbt=!{AngerTime:0}] if entity @p[distance=..4,gamemode=!creative,gamemode=!spectator] anchored eyes facing entity @p[distance=..4,gamemode=!creative,gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^.6 unless block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~ ~ #fkbm:enderman_lookbreak if block ~ ~-2 ~ #fkbm:enderman_lookbreak run function fkbm:systems/mobs/loop/skill/enderman/lookbreak
scoreboard players operation @s[tag=fkbm.enderman.lookbreak,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
