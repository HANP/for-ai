## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"預言家","color":"yellow","bold":false}]

execute if entity @p[tag=thiefTarget,tag=apprentice] run tag @s add apprentice
execute if entity @p[tag=thiefTarget,tag=bewitched] run tag @s add bewitched

execute if entity @s[tag=apprentice] run tellraw @s [{"text":"目前為見習狀態","color":"white","bold":false}]
execute if entity @s[tag=bewitched] run tellraw @s [{"text":"同時被蠱惑","color":"white","bold":false}]

tag @p[tag=thiefTarget] remove apprentice
tag @p[tag=thiefTarget] remove bewitched
tag @p[tag=thiefTarget] remove seer
tag @p[tag=thiefTarget] remove goods