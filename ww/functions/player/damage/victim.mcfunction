## Running from advancement ww:victim
## Context: @p[tag=origin] is the origin, @s is the victim

advancement revoke @s only ww:victim

execute on attacker run tag @s add origin


# case morning vote (riot mode):
# must be holding sword in mainhand
execute if predicate ww:mode/riot if predicate ww:morning if entity @a[tag=origin,predicate=ww:mainhand/wooden_sword] run function ww:vote/morning/damage

# case wolf hit (riot mode)
# must be holding axe in mainhand
execute unless score @s immune matches 1.. if predicate ww:mode/riot if entity @a[tag=origin,tag=wolf,predicate=ww:mainhand/netherite_axe] run function ww:player/death/wolf

# case knockback stick hit (handled by ww:player/damage/knockback)
# execute if entity @a[tag=origin,predicate=ww:mainhand/knockback] run clear @p[tag=origin] stick{knockback:1b}

# case curse bone hit (riot mode)
execute unless score @s immune matches 1.. if entity @a[tag=origin,predicate=ww:mainhand/curse] run function ww:role/voodoo/curse

# case hentai hit (riot mode)
# ignores immune
execute if predicate ww:mode/riot if entity @a[tag=origin,tag=hentai] run function ww:role/hentai/harass

tag @a remove origin