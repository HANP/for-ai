# copy @s object to currentObj from roles.journey, the rest gets sent back to roles.journey
# modify the object
# append the object back to roles.journey
# structure: {id: #, roles: [<name: str>, ...], count: #}
# structure: {roles:{ journey: [] }}

# step 1: retrive the obj from the roles.journey array
function ww:role/__journey/find_obj

# step 2: copy role name to temp
data modify storage ww:game temp set value

# step 3 get count in currentObj
execute store result score %rolesCount var run data get storage ww:game currentObj.count 

# step 4: append '{"text":" > ","color":"white"}' and role name
execute if score %rolesCount var matches 1.. run data modify storage ww:game currentObj.roles append value '{"text":" > ","color":"green"}'
function ww:role/name/switcher
execute unless entity @s[tag=fool] run data modify storage ww:game currentObj.roles append value '{"text":"","color":"white"}'
execute if entity @s[tag=fool] run data modify storage ww:game currentObj.roles append value '{"text":"蠢","color":"white"}'
data modify storage ww:game currentObj.roles append string storage ww:game role.name

# step 5: increment and store count
execute if score %rolesCount var matches 1.. run scoreboard players add %rolesCount var 3
execute if score %rolesCount var matches 0 run scoreboard players add %rolesCount var 2

execute store result storage ww:game currentObj.count int 1 run scoreboard players get %rolesCount var

# step 6: append the modified obj back to the array
data modify storage ww:game roles.journey append from storage ww:game currentObj
