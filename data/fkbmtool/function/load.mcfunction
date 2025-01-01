# scores
scoreboard objectives add fktool dummy

# fkversion
scoreboard players set #FktoolVersion fktool 12100
execute store success score #tmp fktool run function fkbmtool:fkversion
scoreboard players reset #FktoolVersion fktool
execute if score #tmp fktool matches 0 run return run tellraw @a[tag=fkdev] [{"text":"[fktool] exit: error during update","color":"red"}]

# init
function fkbmtool:utils/set_constants
function fkbmtool:difficulty/get
function fkbmtool:mcv/get
function fkbmtool:rng/get
function fkbmtool:warnings/get

# modules
#function fkbmtool:systime/get
