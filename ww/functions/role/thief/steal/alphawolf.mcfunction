## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"原初狼","color":"yellow","bold":false}]

tag @p[tag=thiefTarget] remove alpha
tag @p[tag=thiefTarget] remove wolf
tag @p[tag=thiefTarget] remove bads