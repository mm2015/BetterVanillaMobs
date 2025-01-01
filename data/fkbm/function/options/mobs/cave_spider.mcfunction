tellraw @s ["",{"text":"\n"}]
tellraw @s ["",{"text":"[BVM] ","bold":true,"color":"gold"},{"text":"Cave Spider options list","bold":true}]

tellraw @s ["",{"text":"[BVM] ","bold":true,"color":"gold"},{"text":" - CavespiderTouch","hoverEvent":{"action":"show_text","contents":[{"text":"Enable Cave spider modification\n"},{"text":"Default : 1\n","color":"gray"},{"text":"0: disabled\n"},{"text":"1: enabled"}]}},{"text":" "},{"text":"[edit]","bold":true,"color":"aqua","clickEvent":{"action":"suggest_command","value":"/Require patreon version to modify options"}}]
tellraw @s ["",{"text":"[BVM] ","bold":true,"color":"gold"},{"text":" - CavespiderCeiling","hoverEvent":{"action":"show_text","contents":[{"text":"Allow Cave spiders to stick to the ceiling\n"},{"text":"Default : 1\n","color":"gray"},{"text":"0: disabled\n"},{"text":"1: enabled"}]}},{"text":" "},{"text":"[edit]","bold":true,"color":"aqua","clickEvent":{"action":"suggest_command","value":"<<- /scoreboard players set CavespiderCeiling fkbm.options 1"}},{"text":" [warning]","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"This feature adds spiders to a team!\nNot compatible with Paper unless you change an option in "},{"text":"paper.yml\n","color":"red"},{"text":"allow-non-player-entities-on-scoreboards: true","color":"red"}]}}]
tellraw @s ["",{"text":"[BVM] ","bold":true,"color":"gold"},{"text":" - CavespiderNausea","hoverEvent":{"action":"show_text","contents":[{"text":"Cave spiders bites give quick nausea and slowness effects\n"},{"text":"Default : 1\n","color":"gray"},{"text":"0: disabled\n"},{"text":"1: enabled"}]}},{"text":" "},{"text":"[edit]","bold":true,"color":"aqua","clickEvent":{"action":"suggest_command","value":"/Require patreon version to modify options"}}]