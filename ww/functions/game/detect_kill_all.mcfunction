execute store result score %totalAlivePlayers var if entity @a[tag=alive]
execute store result score %totalCasualty var if entity @a[tag=alive,scores={playerDeath=1..}]

scoreboard players reset * playerDeath

execute if score %totalAlivePlayers var = %totalCasualty var run function ww:game/end