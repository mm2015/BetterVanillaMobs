scoreboard objectives add fkbm.options dummy {"text":"Better Vanilla Mobs Options","color":"#80a0b4"}
scoreboard objectives add fkbm.difficulty dummy {"text":"BVM individual difficulty","color":"#80a0b4"}
scoreboard objectives add fkbm.nightmare.force dummy {"text":"fkbm.nightmare.force","color":"#80a0b4"}
scoreboard objectives add fkbm.nightmare.lvl dummy {"text":"BVM nightmare levels","color":"#80a0b4"}
scoreboard objectives add fkbm.nightmare.xp dummy {"text":"fkbm.nightmare.xp","color":"#80a0b4"}
scoreboard objectives add fkbm.compat dummy {"text":"BVM Compatibility","color":"#80a0b4"}
scoreboard objectives add fkbm.death deathCount {"text":"fkbm.death","color":"#80a0b4"}
scoreboard objectives add fkbm.dim dummy {"text":"fkbm.dim","color":"#80a0b4"}
scoreboard objectives add fkbm.cd1 dummy {"text":"fkbm.cd1","color":"#80a0b4"}
scoreboard objectives add fkbm.cd2 dummy {"text":"fkbm.cd2","color":"#80a0b4"}
scoreboard objectives add fkbm.cd3 dummy {"text":"fkbm.cd3","color":"#80a0b4"}
scoreboard objectives add fkbm.var dummy {"text":"fkbm.var","color":"#80a0b4"}

team add fkbm.spider
team modify fkbm.spider nametagVisibility never

function fkbm:compatibility/checks
function fkbm:properties
function fkbm:adv/revoke_all
function fkbm:schedules/list

scoreboard players set MCDP fkbm.compat 1
schedule function fkbm:compatibility/checks 40t
schedule function fkbm:compatibility/infos 41t

tellraw @a ["",{"text":"[BetterVanillaMobs] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Developed with love by "},{"text":"FunkyToc","color":"#8269ff","bold":true}]}},{"text":"Enabled. "},{"text":"See all projects on "},{"text":"PMC","color":"#3366cc","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/funkytoc/submissions/"}},{"text":" or "},{"text":"Modrinth","color":"#1bd96a","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/FunkyToc"}},{"text":"!"}]
execute if score McVersion fktool matches ..12006 run tellraw @a ["",{"text":"[BetterVanillaMobs] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Developed with love by "},{"text":"FunkyToc","color":"#8269ff","bold":true}]}},{"text":"Version 1.20.6 or inferior detected. This datapack needs 1.21+.","color":"red"}]
execute if score McVersion fktool matches 12100.. run tellraw @a ["",{"text":"[BetterVanillaMobs] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Developed with love by "},{"text":"FunkyToc","color":"#8269ff","bold":true}]}},{"text":"Modify Options "},{"text":"[click here]","bold":true,"color":"aqua","clickEvent":{"action":"suggest_command","value":"/function fkbm:options/get"}}]
execute if score McVersion fktool matches 12100.. run tellraw @a ["",{"text":"[BetterVanillaMobs] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Developed with love by "},{"text":"FunkyToc","color":"#8269ff","bold":true}]}},{"text":"You're playing the FREE version, get the customizable version "},{"text":"[becoming a Patreon]","bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://www.patreon.com/funkytoc"}}]
tellraw @a[tag=fkdev] [{"text":"Loaded with McVersion -> ","color":"red"},{"score":{"name":"McVersion","objective":"fktool"},"color":"gray"}]
