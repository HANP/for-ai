tag @s add bloodySacrifice
tag @s remove qualifiedBloodMoon
clear @s warped_fungus_on_a_stick{blood_moon:1b}

scoreboard players set %blood_moon system 1
execute if entity @s[tag=fool] run scoreboard players set %blood_moon system 2

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"selector":"@s","color":"gold"},{"text":" 發動了血月","color":"red","bold":true}]

execute if predicate ww:morning if entity @s[tag=!fool] run function ww:time/force_night
execute if entity @s[tag=fool] run function ww:player/death/fool_bloody_wolf