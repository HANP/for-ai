clear @a
effect clear @a
xp set @a 0 points
xp set @a 0 levels

function ww:reset/entities

scoreboard players reset * god
scoreboard players reset * readHistory
execute store result score %gametime system run time query gametime

execute as @a run function ww:reset/tags
function ww:reset/values

scoreboard players set %idle system 0

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

execute if entity OoKoukioO if entity Hi_Chocolate run team modify player prefix [{"text":"【","color":"#ffff49"},{"text":"O","color":"#caff6e"},{"text":"E","color":"#95ff98"},{"text":"U","color":"#60ffc1"},{"text":"R","color":"#25ffe4"},{"text":"】 ","color":"#16fcff"}]


tag @a[predicate=!ww:god] add alive
gamemode adventure @a[predicate=!ww:god]
gamemode spectator @a[predicate=ww:god]

execute as @a[tag=alive,sort=random] run function ww:player/id/global
execute as @a[tag=alive,sort=random] run function ww:player/id/local

function ww:reset/values/teaming
function ww:reset/values/roles_journey

function ww:game/teleport

team join player @a

execute if score %find_buttons system matches 1 run function fd:button/init
execute unless score %find_buttons system matches 1 run function ww:game/init/role_assign