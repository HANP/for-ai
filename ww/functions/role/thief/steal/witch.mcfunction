## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"女巫","color":"yellow","bold":false}]

scoreboard players operation @s deathPotion = @p[tag=thiefTarget] deathPotion
scoreboard players reset @p[tag=thiefTarget] deathPotion

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"剩餘毒藥: ","color":"white","bold":false},{"score":{"name":"@s","objective":"deathPotion"},"color":"yellow","bold":false}]

tag @p[tag=thiefTarget] remove witch
tag @p[tag=thiefTarget] remove goods