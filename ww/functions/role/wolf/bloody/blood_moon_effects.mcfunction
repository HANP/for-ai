## %blood_moon system = 1, normal blood moon
## %blood_moon system = 2, fool blood moon
## Running in functions ww:game/ingame/riot/night, when %blood_moon system matches 1..

execute if score %blood_moon system matches 1 run effect give @a[tag=alive,predicate=ww:armed] speed infinite 4 true
execute if score %blood_moon system matches 1 run effect give @a[tag=alive,predicate=ww:armed] jump_boost infinite 3 true

execute if score %blood_moon system matches 2 run effect give @a[tag=alive,predicate=ww:armed] slowness 1 1 true
execute if score %blood_moon system matches 2 run effect give @a[tag=alive,predicate=ww:armed] slow_falling 1 2 true