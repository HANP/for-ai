## CONTEXT: @s = source player, @p[tag=thiefTarget] = target player
## Current location: target player's location
## Condition: @p[tag=thiefTarget] has cupidPair score >= 1

# change the other pair cupidPair value to thief's id
execute as @a[tag=alive] if score @s id = @p[tag=thiefTarget] cupidPair run tag @s add theOtherPair

scoreboard players operation @p[tag=theOtherPair] cupidPair = @s id

tag @a remove theOtherPair


scoreboard players operation %temp var = @p[tag=thiefTarget] cupidPair
scoreboard players operation @p[tag=thiefTarget] cupidPair = @s cupidPair
scoreboard players operation @s cupidPair = %temp var

scoreboard players operation %temp var = @p[tag=thiefTarget] cupidSource
scoreboard players operation @p[tag=thiefTarget] cupidSource = @s cupidSource
scoreboard players operation @s cupidSource = %temp var

tag @s add lovers
execute if entity @p[tag=thiefTarget,tag=pairA] run tag @s add pairA
execute if entity @p[tag=thiefTarget,tag=pairB] run tag @s add pairB

execute unless score @p[tag=thiefTarget] cupidPair matches 1.. run tag @p[tag=thiefTarget] remove pairA
execute unless score @p[tag=thiefTarget] cupidPair matches 1.. run tag @p[tag=thiefTarget] remove pairB
execute unless score @p[tag=thiefTarget] cupidPair matches 1.. run tag @p[tag=thiefTarget] remove lovers

tellraw @s [{"text":"奪得目標的配偶","color":"white","bold":false}]
tellraw @p[tag=thiefTarget] [{"text":"你的配偶被搶了","color":"white","bold":false}]