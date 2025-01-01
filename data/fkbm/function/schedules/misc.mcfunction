# clamp base difficulty
execute if score BaseDifficulty fkbm.options matches ..-1 run scoreboard players set BaseDifficulty fkbm.options 4
execute if score BaseDifficulty fkbm.options matches 5.. run scoreboard players set BaseDifficulty fkbm.options 4

# auto set difficulty
execute if score BaseDifficulty fkbm.options matches 0..3 run scoreboard players operation #BaseDifficulty fkbm.options = BaseDifficulty fkbm.options
execute if score BaseDifficulty fkbm.options matches 0004 run function fkbmtool:difficulty/get
execute if score BaseDifficulty fkbm.options matches 0004 run scoreboard players operation #BaseDifficulty fkbm.options = Difficulty fktool

# clamp nigthmare difficulty
execute if score NightmareBaseLvl fkbm.options matches ..-1 run scoreboard players set NightmareBaseLvl fkbm.options 0
execute if score NightmareBaseLvl fkbm.options matches 101.. run scoreboard players set NightmareBaseLvl fkbm.options 100

# update affinity weights
function fkbm:systems/mobs/touch/affinity/set_weight


schedule function fkbm:schedules/misc 15s
