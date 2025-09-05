execute as @a run function ww:reset/tags/riot

# kill players with bloodySacrifice tag
execute as @a[tag=bloodySacrifice,tag=alive] run function ww:player/death/bloody_sacrifice

execute as @a[scores={thiefTarget=1..}] run function ww:role/thief/__steal