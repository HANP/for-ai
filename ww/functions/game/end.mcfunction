clear @a
effect clear @a
kill @e[type=item]
team leave @a
gamerule fallDamage false

# Reset base movement speed
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.1

function fd:button/end

function ww:reset/entities

function ww:skill/reveal/all

execute as @a run function ww:reset/tags
function ww:reset/values
function ww:reset/schedules

gamemode adventure @a
time set noon

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

execute if score %show_wins system matches 1 run scoreboard objectives setdisplay sidebar wins
execute if score %show_wins system matches 1 run scoreboard objectives setdisplay list wins

scoreboard players add %gamesPlayed system 1

tp @a @e[type=marker,tag=lobby,limit=1]
execute at @e[type=marker,tag=lobby,limit=1] run spawnpoint @a ~ ~ ~