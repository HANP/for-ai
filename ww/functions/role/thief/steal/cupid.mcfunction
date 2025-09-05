## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功竊取 ","color":"white","bold":false},{"text":"邱比特","color":"yellow","bold":false}]

scoreboard players operation @s onWolfList = @p[tag=thiefTarget] onWolfList
scoreboard players reset @p[tag=thiefTarget] onWolfList

# copy tags over
execute if entity @p[tag=thiefTarget,tag=bads] run tag @s add bads
execute if entity @p[tag=thiefTarget,tag=wraiths] run tag @s add wraiths
execute if entity @p[tag=thiefTarget,tag=pairedA] run tag @s add pairedA
execute if entity @p[tag=thiefTarget,tag=pairedB] run tag @s add pairedB
execute if entity @p[tag=thiefTarget,tag=linked] run tag @s add linked
execute if entity @p[tag=thiefTarget,tag=lovers] run tag @s add lovers

# reassign cupidSource
tag @s add thisAngel
execute as @a[scores={cupidSource=1..}] if score @s cupidSource = @p[tag=thiefTarget] id run tag @s add thisAngelTargets
scoreboard players operation @a[tag=thisAngelTargets] cupidSource = @p[tag=thisAngel] id
tag @s remove thisAngel

tag @p[tag=thiefTarget] remove cupid
tag @p[tag=thiefTarget] remove pairedA
tag @p[tag=thiefTarget] remove pairedB
tag @p[tag=thiefTarget] remove linked
tag @p[tag=thiefTarget] remove lovers
tag @p[tag=thiefTarget] remove goods
tag @p[tag=thiefTarget] remove wraiths
tag @p[tag=thiefTarget] remove bads

execute if entity @a[tag=thisAngelTargets] run tellraw @s [{"text":"取得情人 ","color":"white","bold":false},{"selector":"@a[tag=thisAngelTargets]","color":"#ffc0cb","bold":true},{"text":" 的支配權","color":"white","bold":false}]
execute if entity @s[tag=wraiths] run tellraw @s [{"text":"並轉為 ","color":"white","bold":false},{"text":"怨靈陣營","color":"yellow"}]
execute if entity @s[tag=bads] run tellraw @s [{"text":"並轉為 ","color":"white","bold":false},{"text":"狼人陣營","color":"yellow"}]

tag @a remove thisAngelTargets