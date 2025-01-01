# vanilla spells
execute store result score #tmp fkbm.options run data get entity @s SpellTicks
execute if score #IndividualDiff fkbm.options matches 1 if score #tmp fkbm.options matches 1.. run scoreboard players operation #tmp fkbm.options -= #2 fktool
execute if score #IndividualDiff fkbm.options matches 2 if score #tmp fkbm.options matches 1.. run scoreboard players operation #tmp fkbm.options -= #3 fktool
execute if score #IndividualDiff fkbm.options matches 3 if score #tmp fkbm.options matches 1.. run scoreboard players operation #tmp fkbm.options -= #4 fktool
execute store result storage fkbm:mobs/illusioner cd int 1 run scoreboard players get #tmp fkbm.options
data modify entity @s SpellTicks set from storage fkbm:mobs/illusioner cd

# heal spell
execute store result score #tmp fkbm.options run scoreboard players get IllusionerHealCd fkbm.options
execute if score #IndividualDiff fkbm.options matches 1 if score #tmp fkbm.options matches 1.. run scoreboard players operation #tmp fkbm.options /= #10 fktool
execute if score #IndividualDiff fkbm.options matches 2 if score #tmp fkbm.options matches 1.. run scoreboard players operation #tmp fkbm.options /= #8 fktool
execute if score #IndividualDiff fkbm.options matches 3 if score #tmp fkbm.options matches 1.. run scoreboard players operation #tmp fkbm.options /= #5 fktool
execute if entity @s[tag=fkbm.illusioner.heal] run scoreboard players operation @s[scores={fkbm.cd1=1..}] fkbm.cd1 -= #tmp fkbm.options
