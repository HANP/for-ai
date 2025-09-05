## CONTEXT: @s = source player, @p[tag=correctStare] = target player

data modify storage ww:game DISPLAY.temp set value '{"text":" 票了 ","color":"white","bold":false}'
execute if score @s morningVote matches 1.. run data modify storage ww:game DISPLAY.temp set value '{"text":" 改票 ","color":"white","bold":false}'

execute unless score @s morningVote = @p[tag=correctStare] localId run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","bold":true,"color":"green"},{"storage":"ww:game","nbt":"DISPLAY.temp","interpret":true},{"selector":"@p[tag=correctStare]","color":"red","bold":true}]

scoreboard players operation @s morningVote = @p[tag=correctStare] localId
function ww:vote/morning/count