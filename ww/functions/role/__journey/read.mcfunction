## CONTEXT: @s
## OUTPUT: ww:game currentObj, %rolesCount var

scoreboard players set %readOnly var 1
function ww:role/__journey/find_obj
execute store result score %rolesCount var run data get storage ww:game currentObj.count

# tellraw @s {"storage":"ww:game","nbt":"DISPLAY.roles.journey","interpret":true}