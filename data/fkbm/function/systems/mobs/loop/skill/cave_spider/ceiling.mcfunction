# canceler
execute if entity @s[tag=fkbm.alpha] run return 0

# rename
execute if block ~ ~-1 ~ #fkbmtool:airs unless block ~ ~1 ~ #fkbmtool:airs unless entity @s[nbt={Passengers:[{id:"minecraft:minecraft:skeleton"}]}] run data merge entity @s {CustomName:'{"text":"Grumm"}'}
execute if block ~ ~01 ~ #fkbmtool:airs run data merge entity @s {CustomName:'{"text":""}'}
