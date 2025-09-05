## CONTEXT: @s id, %readOnly var

# loop times = total player global ids
# always loop through everything so that we can have roles.journey set back
# to how it was, minus the currentObj
scoreboard players operation %objCount var = %current id
data modify storage ww:game tempArray set value []
data remove storage ww:game temp
data remove storage ww:game currentObj

function ww:role/__journey/get_obj
data modify storage ww:game roles.journey set from storage ww:game tempArray

# if currentObj is not existent, if will not append anything
execute if score %readOnly var matches 1 run data modify storage ww:game roles.journey append from storage ww:game currentObj
scoreboard players reset %readOnly var