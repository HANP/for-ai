## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"暴走狼","color":"yellow","bold":false}]

scoreboard players operation @s speedLevel = @p[tag=thiefTarget] speedLevel
scoreboard players reset @p[tag=thiefTarget] speedLevel

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"目前累積刀人數: ","color":"white","bold":false},{"score":{"name":"@s","objective":"speedLevel"},"color":"yellow","bold":false}]

tag @p[tag=thiefTarget] remove rage
tag @p[tag=thiefTarget] remove wolf
tag @p[tag=thiefTarget] remove bads