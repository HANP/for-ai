## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"血狼","color":"yellow","bold":false}]

# assign bloodySacrifice tag to @s
execute if entity @p[tag=thiefTarget,tag=bloodySacrifice] run tag @s add bloodySacrifice

tag @p[tag=thiefTarget] remove bloodySacrifice
tag @p[tag=thiefTarget] remove bloody
tag @p[tag=thiefTarget] remove wolf
tag @p[tag=thiefTarget] remove bads