# init & reset
scoreboard players set #rarity fkbm.options 0

data modify storage fkbm:ename type set value '{"text":""}'
data modify storage fkbm:ename affinity set value '{"text":""}'
data modify storage fkbm:ename rarity set value '{"text":""}'
data modify storage fkbm:ename nightmare set value '{"text":""}'

data remove storage fkbm:cname type.value
data remove storage fkbm:cname nightmare.lvl
