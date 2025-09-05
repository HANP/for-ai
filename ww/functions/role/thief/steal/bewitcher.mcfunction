## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"特殊種族: ","color":"white","bold":false},{"text":"蠱惑師","color":"yellow","bold":false}]

tag @p[tag=thiefTarget] remove bewitcher
tag @p[tag=thiefTarget] remove wraiths
tag @p[tag=thiefTarget] remove immortal