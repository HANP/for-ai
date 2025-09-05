execute if score %blood_moon system matches 1 run bossbar set minecraft:time color red
execute if score %blood_moon system matches 1 run bossbar set minecraft:time name [{"text":"血月","color":"red","bold":true}," ",{"score":{"name":"%time","objective":"system"},"color":"gold"}]

execute if score %blood_moon system matches 2 run bossbar set minecraft:time color pink
execute if score %blood_moon system matches 2 run bossbar set minecraft:time name [{"text":"▶","color":"#87CEEB","bold":true},{"text":"蠢","color":"yellow"},{"text":"◀","color":"#87CEEB"},{"text":" 血月","color":"red","bold":true}," ",{"score":{"name":"%time","objective":"system"},"color":"gold"}]