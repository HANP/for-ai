## 1. find top score of becameBadsCount
## 2. select one and assign non bads

scoreboard players set %max becameBadsCount 0
execute as @a[predicate=!ww:god,tag=!has_role,scores={becameBadsCount=1..}] run scoreboard players operation %max becameBadsCount > @s becameBadsCount

execute as @a[predicate=!ww:god,tag=!has_role,scores={becameBadsCount=1..}] if score @s becameBadsCount = %max becameBadsCount run tag @s add non_bads_candidate
tag @p[tag=non_bads_candidate,sort=random] add chosen_non_bads_candidate

scoreboard players set @p[tag=chosen_non_bads_candidate] becameBadsCount 0
execute as @p[tag=chosen_non_bads_candidate] run function ww:role/assign/get/non_bads

tag @a remove non_bads_candidate
tag @a remove chosen_non_bads_candidate