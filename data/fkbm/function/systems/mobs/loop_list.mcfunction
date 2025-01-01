# get dimension
scoreboard players set @a[predicate=fkbmtool:dimension/in_over] fkbm.dim 0
scoreboard players set @a[predicate=fkbmtool:dimension/in_nether] fkbm.dim -1
scoreboard players set @a[predicate=fkbmtool:dimension/in_end] fkbm.dim 1

# gameplay
execute as @a[scores={fkbm.dim=0}] at @s run function fkbm:systems/mobs/loop/loop_over
execute as @a[scores={fkbm.dim=-1}] at @s run function fkbm:systems/mobs/loop/loop_nether
execute as @a[scores={fkbm.dim=1}] at @s run function fkbm:systems/mobs/loop/loop_end

tag @e[tag=fkbm.looped] remove fkbm.looped
