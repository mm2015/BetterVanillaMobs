tag @s add fkbm.illusioner.chance
function fkbmtool:rng/get
execute if score Random fktool <= #10 fktool unless entity @e[type=minecraft:illusioner,distance=..64,limit=1] run function fkbm:systems/mobs/loop/skill/illusioner/spawn
