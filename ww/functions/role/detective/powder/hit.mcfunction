## CONTEXT: @s = source player, @p[tag=correctStare] = target player
## Current location: target player's location

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if entity @s[tag=!fool] as @p[tag=correctStare] run function ww:player/powdered
execute if entity @s[tag=fool] run function ww:player/powdered

execute if entity @a[tag=correctStare,predicate=!ww:invis] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"螢光粉灑向 ","color":"white","bold":false},{"selector":"@p[tag=correctStare]","color":"green","bold":true}]

execute if entity @a[tag=correctStare,predicate=ww:invis] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"螢光粉灑向 ","color":"white","bold":false},{"text":"隱形的玩家","color":"green","bold":true}]

clear @s warped_fungus_on_a_stick{powder:1b}