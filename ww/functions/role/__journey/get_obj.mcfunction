## CONTEXT: @s id, %objCount var

execute store result score %currentObjId var run data get storage ww:game roles.journey[0].id
execute if score @s id = %currentObjId var run data modify storage ww:game currentObj set from storage ww:game roles.journey[0]

execute unless score @s id = %currentObjId var run data modify storage ww:game tempArray append from storage ww:game roles.journey[0]

data remove storage ww:game roles.journey[0]

scoreboard players remove %objCount var 1
execute if score %objCount var matches 1.. run function ww:role/__journey/get_obj