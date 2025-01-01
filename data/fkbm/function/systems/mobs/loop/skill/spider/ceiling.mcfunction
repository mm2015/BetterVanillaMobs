execute if block ~ ~-1 ~ #fkbmtool:airs unless block ~ ~1 ~ #fkbmtool:airs unless entity @s[nbt={Passengers:[{id:"minecraft:minecraft:skeleton"}]}] run data merge entity @s {CustomName:'{"text":"Grumm"}'}

execute if block ~ ~1 ~ #fkbmtool:airs run data merge entity @s[tag=!fkbm.alpha] {CustomName:'{"text":""}'}
execute if block ~ ~1 ~ #fkbmtool:airs run data merge entity @s[tag=fkbm.alpha] {CustomName:'{"text":"\\u2620 Alpha Spider \\u2620","color":"red"}'}
