## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"百變狼","color":"yellow","bold":false}]

scoreboard players operation @s hijack = @p[tag=thiefTarget] hijack
scoreboard players reset @p[tag=thiefTarget] hijack

tag @s add this
execute as @a[scores={hijack=1..}] if score @s id = @p[tag=this] hijack run tellraw @p[tag=this] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"目前捕捉對象: ","color":"white","bold":false},{"selector":"@s","color":"yellow","bold":false}]
tag @s remove this

tag @p[tag=thiefTarget] remove hijack
tag @p[tag=thiefTarget] remove wolf
tag @p[tag=thiefTarget] remove bads