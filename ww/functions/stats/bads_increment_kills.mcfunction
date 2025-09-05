## counting how many kills done during bads campaign

execute if entity @s[tag=bloody,tag=wolf,tag=alive] run tag @s add qualifiedBloodMoon
execute if entity @s[tag=qualifiedBloodMoon,tag=!bloodySacrifice] unless data entity @s Inventory[{tag:{blood_moon:1b}}] run function ww:item/skill/blood_moon

function ww:stats/increment_player_kills