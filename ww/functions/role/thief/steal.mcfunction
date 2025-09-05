## CONTEXT: @s = source player, @p[tag=correctStare] = target player
## Current location: target player's location

execute if entity @p[tag=correctStare,tag=thief] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"對象同行, 標記失敗","color":"white"}]
execute if entity @p[tag=correctStare,tag=!thief] run function ww:role/thief/mark
