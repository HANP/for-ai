execute if predicate ww:morning run bossbar set minecraft:time color white
execute if predicate ww:morning run bossbar set minecraft:time name [{"text":"白天倒數","color":"yellow","bold":true}," ",{"score":{"name":"%time","objective":"system"},"color":"gold"}]

execute if predicate ww:night unless score %blood_moon system matches 1.. run bossbar set minecraft:time color purple
execute if predicate ww:night unless score %blood_moon system matches 1.. run bossbar set minecraft:time name [{"text":"夜晚倒數","color":"yellow","bold":true}," ",{"score":{"name":"%time","objective":"system"},"color":"gold"}]

execute if predicate ww:night if score %blood_moon system matches 1.. run function ww:role/wolf/bloody/special_time_display

execute store result bossbar minecraft:time value run scoreboard players get %time system