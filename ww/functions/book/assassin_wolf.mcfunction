function ww:book/init

execute unless entity @a[tag=alive,tag=hijack,tag=wolf,tag=!fool] run function ww:book/global/pages
execute if entity @a[tag=alive,tag=hijack,tag=wolf,tag=!fool] run function ww:book/global/obfuscated

data modify block 0 0 0 Items[0].tag.title set value '刺殺玩家'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"刺殺玩家","color":"dark_red","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set from storage ww:game book.pages.global
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"刺殺玩家","color":"dark_red","bold":true},"\\n\\n",{"text":"選擇一名玩家。接著你會拿到『選擇職業』的書；若你猜的職業(非狼人)與其真實職業一致，該玩家死亡；不一致則你死亡。","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.assassin_wolf set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}
