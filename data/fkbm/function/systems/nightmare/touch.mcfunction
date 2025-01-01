# canceler
execute if score #IndividualNightmare fkbm.options matches ..0 run return 0

# nightmare attributes
scoreboard players operation #Nightmare.MobBuff.Health fkbm.options = Nightmare.MobBuff.Health fkbm.options
scoreboard players operation #Nightmare.MobBuff.Health fkbm.options *= #IndividualNightmare fkbm.options
execute store result storage fkbm:nightmare Buff.Health float 0.01 run scoreboard players get #Nightmare.MobBuff.Health fkbm.options
scoreboard players operation #Nightmare.MobBuff.Damage fkbm.options = Nightmare.MobBuff.Damage fkbm.options
scoreboard players operation #Nightmare.MobBuff.Damage fkbm.options *= #IndividualNightmare fkbm.options
execute store result storage fkbm:nightmare Buff.Damage float 0.01 run scoreboard players get #Nightmare.MobBuff.Damage fkbm.options
scoreboard players operation #Nightmare.MobBuff.Speed fkbm.options = Nightmare.MobBuff.Speed fkbm.options
scoreboard players operation #Nightmare.MobBuff.Speed fkbm.options *= #IndividualNightmare fkbm.options
execute store result storage fkbm:nightmare Buff.Speed float 0.001 run scoreboard players get #Nightmare.MobBuff.Speed fkbm.options
function fkbm:systems/nightmare/apply_attr with storage fkbm:nightmare Buff

# set new health
execute store result storage fkbm:vars tmp double 1 run attribute @s minecraft:generic.max_health get 1
data modify entity @s Health set from storage fkbm:vars tmp
