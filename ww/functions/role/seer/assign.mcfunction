tag @s add apprentice
tag @s add seer

# this is just for role journey to not show apprentice seer as every seer's first role
# started = 0 indicates it's during role assign phase
execute if score %started system matches 0 unless entity @a[tag=seer,tag=!apprentice] run tag @s remove apprentice 

function ww:role/seer/campaign