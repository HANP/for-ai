## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"黑狼王","color":"yellow","bold":false}]

scoreboard players operation @s hunterTarget = @p[tag=thiefTarget] hunterTarget
scoreboard players reset @p[tag=thiefTarget] hunterTarget

tag @s add this
execute as @a[scores={hunterTarget=1..}] if score @s id = @p[tag=this] hunterTarget run tellraw @p[tag=this] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"目前指槍: ","color":"white","bold":false},{"selector":"@s","color":"yellow","bold":false}]
tag @s remove this

tag @p[tag=thiefTarget] remove black
tag @p[tag=thiefTarget] remove wolf
tag @p[tag=thiefTarget] remove bads