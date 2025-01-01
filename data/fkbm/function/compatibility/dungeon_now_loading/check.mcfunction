## Dungeon Now Loading
## by Hex
scoreboard players set Dungeon_Now_Loading fkbm.compat 0
execute if score #1 dnl.constant matches 0.. run return run scoreboard players set Dungeon_Now_Loading fkbm.compat 1
execute if score @e[limit=1] dnl.phase matches 0.. run return run scoreboard players set Dungeon_Now_Loading fkbm.compat 1
execute if score @e[limit=1] dnl.mx1 matches 0.. run return run scoreboard players set Dungeon_Now_Loading fkbm.compat 1
