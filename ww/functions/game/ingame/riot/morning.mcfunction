# Riot Glow
execute store result score %alives var if entity @a[tag=alive]
execute if score %alives var <= %riot_glow system run effect give @a[tag=alive] glowing 1 0 true
execute if score %days_glow system matches 1.. if score %day system >= %days_glow system run effect give @a[tag=alive] glowing 1 0 true

# Riot Morning Kit
execute if score %day system matches 2.. as @a[tag=alive] unless data entity @s Inventory[{tag:{vote:1b,morning:1b}}] run function ww:item/kit/morning
execute if score %day system matches 2.. as @a[tag=alive] unless score @s skip matches 1.. unless data entity @s Inventory[{tag:{skill:1b,skip:1b}}] run function ww:item/kit/morning
execute if score %day system matches 2.. as @a[tag=alive] unless data entity @s Inventory[{tag:{skill:1b,void:1b}}] run function ww:item/kit/morning

# Night Vision
effect give @a night_vision infinite 0 true

# Reset base movement speed
execute as @a[predicate=!ww:god] run attribute @s minecraft:generic.movement_speed base set 0.1