## Running as player dying from bomb wolf's bomb
## CONTEXT: @s = target player

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","color":"white","bold":true},{"text":" 被炸死了","color":"white","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]

function ww:player/death