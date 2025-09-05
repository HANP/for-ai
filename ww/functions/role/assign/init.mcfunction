function ww:role/assign/load
kill @e[type=marker,tag=role]
summon marker ~ ~ ~ {Tags:[role,bads,wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,white_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,black_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,snow_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,hijack_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,alpha_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,rage_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,bomb_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,bloody_wolf]}
summon marker ~ ~ ~ {Tags:[role,bads,assassin_wolf]}
summon marker ~ ~ ~ {Tags:[role,goods,spirit]}
summon marker ~ ~ ~ {Tags:[role,goods,hunter]}
summon marker ~ ~ ~ {Tags:[role,goods,seer]}
summon marker ~ ~ ~ {Tags:[role,goods,witch]}
summon marker ~ ~ ~ {Tags:[role,goods,ninja]}
summon marker ~ ~ ~ {Tags:[role,goods,trickster]}
summon marker ~ ~ ~ {Tags:[role,goods,siren]}
summon marker ~ ~ ~ {Tags:[role,goods,cupid]}
summon marker ~ ~ ~ {Tags:[role,goods,masochist]}
summon marker ~ ~ ~ {Tags:[role,goods,sadist]}
summon marker ~ ~ ~ {Tags:[role,goods,digger]}
summon marker ~ ~ ~ {Tags:[role,goods,knight]}
summon marker ~ ~ ~ {Tags:[role,goods,guardian]}
summon marker ~ ~ ~ {Tags:[role,goods,detective]}
summon marker ~ ~ ~ {Tags:[role,goods,hentai]}
summon marker ~ ~ ~ {Tags:[role,goods,thief]}
summon marker ~ ~ ~ {Tags:[role,goods,villager]}
summon marker ~ ~ ~ {Tags:[role,wraiths,wraith]}
summon marker ~ ~ ~ {Tags:[role,wraiths,voodoo]}
summon marker ~ ~ ~ {Tags:[role,wraiths,bewitcher]}
execute store result score @e[type=marker,tag=role,tag=bads,tag=wolf] pool run scoreboard players get %wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=white_wolf] pool run scoreboard players get %white_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=black_wolf] pool run scoreboard players get %black_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=snow_wolf] pool run scoreboard players get %snow_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=hijack_wolf] pool run scoreboard players get %hijack_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=alpha_wolf] pool run scoreboard players get %alpha_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=rage_wolf] pool run scoreboard players get %rage_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=bomb_wolf] pool run scoreboard players get %bomb_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=bloody_wolf] pool run scoreboard players get %bloody_wolf pool
execute store result score @e[type=marker,tag=role,tag=bads,tag=assassin_wolf] pool run scoreboard players get %assassin_wolf pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=spirit] pool run scoreboard players get %spirit pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=hunter] pool run scoreboard players get %hunter pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=seer] pool run scoreboard players get %seer pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=witch] pool run scoreboard players get %witch pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=ninja] pool run scoreboard players get %ninja pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=trickster] pool run scoreboard players get %trickster pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=siren] pool run scoreboard players get %siren pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=cupid] pool run scoreboard players get %cupid pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=masochist] pool run scoreboard players get %masochist pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=sadist] pool run scoreboard players get %sadist pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=digger] pool run scoreboard players get %digger pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=knight] pool run scoreboard players get %knight pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=guardian] pool run scoreboard players get %guardian pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=detective] pool run scoreboard players get %detective pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=hentai] pool run scoreboard players get %hentai pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=thief] pool run scoreboard players get %thief pool
execute store result score @e[type=marker,tag=role,tag=goods,tag=villager] pool run scoreboard players get %villager pool
execute store result score @e[type=marker,tag=role,tag=wraiths,tag=wraith] pool run scoreboard players get %wraith pool
execute store result score @e[type=marker,tag=role,tag=wraiths,tag=voodoo] pool run scoreboard players get %voodoo pool
execute store result score @e[type=marker,tag=role,tag=wraiths,tag=bewitcher] pool run scoreboard players get %bewitcher pool
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=!white,tag=!black,tag=!snow]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=white]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=white_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=black]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=black_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=snow]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=snow_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=hijack]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=hijack_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=alpha]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=alpha_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=rage]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=rage_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=bomb]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=bomb_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=bloody]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=bloody_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wolf,tag=assassin]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=bads,tag=assassin_wolf] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=spirit]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=spirit] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=hunter]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=hunter] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=seer]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=seer] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=witch]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=witch] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=ninja]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=ninja] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=trickster]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=trickster] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=siren]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=siren] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=cupid]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=cupid] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=masochist]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=masochist] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=sadist]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=sadist] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=digger]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=digger] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=knight]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=knight] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=guardian]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=guardian] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=detective]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=detective] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=hentai]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=hentai] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=thief]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=thief] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=villager]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=goods,tag=villager] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=wraith]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=wraiths,tag=wraith] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=voodoo]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=wraiths,tag=voodoo] pool -= %existing var
execute store result score %existing var if entity @a[tag=alive,tag=bewitcher]
execute if score %existing var matches 1.. run scoreboard players operation @e[type=marker,tag=role,tag=wraiths,tag=bewitcher] pool -= %existing var
kill @e[type=marker,scores={pool=..0}]