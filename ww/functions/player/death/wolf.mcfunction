## Running as player killed by wolf
## Context: @p[tag=origin] is the origin, @s is the victim

execute if score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","color":"white","bold":false},{"selector":"@s","bold":true},{"text":" 被狼人殺了","bold":false}]

execute unless score %death_reason system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"selector":"@s","bold":true},{"text":" 已死亡","color":"white","bold":false}]
execute unless score %death_reason system matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.death","interpret":true},{"text":"","color":"white","bold":false},{"text":"你被狼人殺了","bold":false}]

# Increment kills counter
execute as @p[tag=origin] run function ww:stats/bads_increment_kills

# Rage Wolf Handler
execute as @p[tag=origin,tag=rage,tag=wolf] run function ww:role/wolf/rage/passive

execute if predicate ww:mode/riot if score %bads_massacre system matches 0 run scoreboard players add %riotNightDeathCount system 1
execute if predicate ww:mode/riot run function ww:player/death