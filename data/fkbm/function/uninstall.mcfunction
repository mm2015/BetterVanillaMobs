scoreboard players reset * fkbm.options
scoreboard players reset * fkbm.difficulty
scoreboard players reset * fkbm.nightmare.force
scoreboard players reset * fkbm.nightmare.lvl
scoreboard players reset * fkbm.nightmare.xp
scoreboard players reset * fkbm.compat
scoreboard players reset * fkbm.death
scoreboard players reset * fkbm.dim
scoreboard players reset * fkbm.cd1
scoreboard players reset * fkbm.cd2
scoreboard players reset * fkbm.cd3
scoreboard players reset * fkbm.var

scoreboard objectives remove fkbm.options
scoreboard objectives remove fkbm.difficulty
scoreboard objectives remove fkbm.nightmare.force
scoreboard objectives remove fkbm.nightmare.lvl
scoreboard objectives remove fkbm.nightmare.xp
scoreboard objectives remove fkbm.compat
scoreboard objectives remove fkbm.death
scoreboard objectives remove fkbm.dim
scoreboard objectives remove fkbm.cd1
scoreboard objectives remove fkbm.cd2
scoreboard objectives remove fkbm.cd3
scoreboard objectives remove fkbm.var

function fkbmtool:uninstall


datapack disable "file/BetterVanillaMobs_FREE.zip"

tellraw @s ["",{"text":"[BVM] ","bold":true,"color":"gold"},{"text":"Uninstalled","color":"red"}]
