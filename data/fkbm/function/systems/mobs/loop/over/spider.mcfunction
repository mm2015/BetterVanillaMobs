# ceiling
execute run function fkbm:systems/mobs/loop/skill/spider/ceiling

# spit
execute if predicate fkbmtool:time/period/the_night if entity @s[tag=!fkbm.spider.spited] if entity @p[distance=4..8,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/spider/spit_cobweb
execute unless entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run tag @s remove fkbm.spider.spited

# mommy
execute if entity @s[tag=fkbm.spider.mommy,tag=!fkbm.spider.summoned,scores={fkbm.cd1=..0}] if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/spider/summon_baby
execute if entity @s[tag=fkbm.spider.summoned] at @s unless entity @e[type=minecraft:cave_spider,tag=fkbm.spider.baby,distance=..5] run tag @s remove fkbm.spider.summoned
scoreboard players operation @s[tag=fkbm.spider.mommy,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# cocoon
execute if entity @s[tag=fkbm.spider.cocoon,scores={fkbm.cd2=..0}] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] unless entity @e[type=minecraft:marker,tag=fkbm.spider.cocoon,distance=..16] run function fkbm:systems/mobs/loop/skill/spider/cocoon_craft
scoreboard players operation @s[tag=fkbm.spider.cocoon,scores={fkbm.cd2=1..}] fkbm.cd2 -= MobGameplayLatency fkbm.options

# sticky path
execute if entity @s[tag=fkbm.spider.stickypath] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/spider/stickypath_place

tag @s add fkbm.looped
