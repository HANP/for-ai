## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"抖S教主","color":"yellow","bold":false}]

scoreboard players operation @s scapegoatTarget = @p[tag=thiefTarget] scapegoatTarget
scoreboard players reset @p[tag=thiefTarget] scapegoatTarget

tag @s add this
execute as @a[scores={scapegoatTarget=1..}] if score @s id = @p[tag=this] scapegoatTarget run tellraw @p[tag=this] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"代罪羔羊: ","color":"white","bold":false},{"selector":"@s","color":"yellow","bold":false}]
tag @s remove this

tag @p[tag=thiefTarget] remove sadist
tag @p[tag=thiefTarget] remove goods