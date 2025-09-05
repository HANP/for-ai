# morning vote finalization is already done on the parent level

scoreboard players add @a[tag=alive] immune 10
execute as @a run function ww:reset/tags/riot

tag @a[scores={powdered=1..}] add powdered