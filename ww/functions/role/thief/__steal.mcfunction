## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tag @s add this
execute as @a[scores={id=1..},tag=!this,tag=alive] if score @s id = @p[tag=this] thiefTarget run tag @s add thiefTarget
tag @s remove this

scoreboard players reset @s thiefTarget
execute unless entity @a[tag=thiefTarget] run return 0

# assign proper tags to self based on target role
# if you are a fool, you will stay a fool
tag @s add this
tag @s remove thief
tag @s remove goods
execute as @p[tag=thiefTarget] run function ww:role/assign/get/__switcher
tag @s remove this


function ww:chat/separator

# swap cupidPair scores
# execute if score @p[tag=thiefTarget] cupidPair matches 1.. run function ww:role/thief/steal/pairs

# this will handle target's role tags removal
# and copying stats over
function ww:role/thief/steal/switcher


# these are from cupid passive
execute if entity @s[tag=wraiths] run tag @s remove goods
execute if entity @s[tag=bads] run tag @s remove goods

function ww:chat/separator


# assign thief to target
# role tag removal is done in role/thief/steal/switcher

execute as @p[tag=thiefTarget] run function ww:role/thief/assign
execute as @p[tag=thiefTarget] run function ww:role/__journey/write
tellraw @p[tag=thiefTarget] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"你被盜賊偷走了職業, 成為新的盜賊","color":"yellow","bold":false}]


function ww:role/assign/postprocess


# clear items
# must not remove hijack wolf disguises

clear @p[tag=thiefTarget]
execute as @p[tag=thiefTarget] run function ww:role/equip
execute as @p[tag=thiefTarget] run function ww:item/kit/morning

clear @s
function ww:role/equip
function ww:item/kit/morning

tag @a remove thiefTarget
scoreboard players reset @s thiefTarget