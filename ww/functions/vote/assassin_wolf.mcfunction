# ------------------- 阶段一: 选择玩家 -------------------
execute if score @s voteTrigger matches 1..50 run tag @s add this
execute if score @s voteTrigger matches 1..50 as @a[scores={id=1..}] if score @s id = @p[tag=this] voteTrigger run tag @s add assassinTarget
execute if score @s voteTrigger matches 1..50 run tag @s remove this
execute if score @s voteTrigger matches 1..50 run function ww:book/assassin_wolf_roles

# ------------------- 阶段二: 选择职业 & 判定 -------------------

# --- 正常刺客狼逻辑 ---
execute if entity @s[tag=!fool] if score @s voteTrigger matches 201 if entity @a[tag=assassinTarget,tag=seer] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 202 if entity @a[tag=assassinTarget,tag=witch] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 203 if entity @a[tag=assassinTarget,tag=hunter] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 204 if entity @a[tag=assassinTarget,tag=knight] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 205 if entity @a[tag=assassinTarget,tag=guardian] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 206 if entity @a[tag=assassinTarget,tag=cupid] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 207 if entity @a[tag=assassinTarget,tag=thief] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 208 if entity @a[tag=assassinTarget,tag=ninja] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 209 if entity @a[tag=assassinTarget,tag=siren] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 210 if entity @a[tag=assassinTarget,tag=digger] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 211 if entity @a[tag=assassinTarget,tag=detective] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 212 if entity @a[tag=assassinTarget,tag=trickster] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 213 if entity @a[tag=assassinTarget,tag=masochist] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 214 if entity @a[tag=assassinTarget,tag=sadist] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 215 if entity @a[tag=assassinTarget,tag=hentai] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 216 if entity @a[tag=assassinTarget,tag=villager] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 217 if entity @a[tag=assassinTarget,tag=wraith] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 218 if entity @a[tag=assassinTarget,tag=voodoo] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 219 if entity @a[tag=assassinTarget,tag=bewitcher] run execute as @a[tag=assassinTarget] run function ww:player/death/wolf

execute if entity @s[tag=!fool] if score @s voteTrigger matches 201 unless entity @a[tag=assassinTarget,tag=seer] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 202 unless entity @a[tag=assassinTarget,tag=witch] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 203 unless entity @a[tag=assassinTarget,tag=hunter] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 204 unless entity @a[tag=assassinTarget,tag=knight] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 205 unless entity @a[tag=assassinTarget,tag=guardian] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 206 unless entity @a[tag=assassinTarget,tag=cupid] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 207 unless entity @a[tag=assassinTarget,tag=thief] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 208 unless entity @a[tag=assassinTarget,tag=ninja] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 209 unless entity @a[tag=assassinTarget,tag=siren] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 210 unless entity @a[tag=assassinTarget,tag=digger] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 211 unless entity @a[tag=assassinTarget,tag=detective] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 212 unless entity @a[tag=assassinTarget,tag=trickster] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 213 unless entity @a[tag=assassinTarget,tag=masochist] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 214 unless entity @a[tag=assassinTarget,tag=sadist] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 215 unless entity @a[tag=assassinTarget,tag=hentai] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 216 unless entity @a[tag=assassinTarget,tag=villager] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 217 unless entity @a[tag=assassinTarget,tag=wraith] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 218 unless entity @a[tag=assassinTarget,tag=voodoo] run function ww:player/death/wolf
execute if entity @s[tag=!fool] if score @s voteTrigger matches 219 unless entity @a[tag=assassinTarget,tag=bewitcher] run function ww:player/death/wolf

# --- 蠢·刺客狼逻辑 ---
# 猜对 -> 自己死亡
execute if entity @s[tag=fool] if score @s voteTrigger matches 201 if entity @a[tag=assassinTarget,tag=seer] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 202 if entity @a[tag=assassinTarget,tag=witch] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 203 if entity @a[tag=assassinTarget,tag=hunter] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 204 if entity @a[tag=assassinTarget,tag=knight] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 205 if entity @a[tag=assassinTarget,tag=guardian] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 206 if entity @a[tag=assassinTarget,tag=cupid] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 207 if entity @a[tag=assassinTarget,tag=thief] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 208 if entity @a[tag=assassinTarget,tag=ninja] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 209 if entity @a[tag=assassinTarget,tag=siren] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 210 if entity @a[tag=assassinTarget,tag=digger] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 211 if entity @a[tag=assassinTarget,tag=detective] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 212 if entity @a[tag=assassinTarget,tag=trickster] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 213 if entity @a[tag=assassinTarget,tag=masochist] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 214 if entity @a[tag=assassinTarget,tag=sadist] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 215 if entity @a[tag=assassinTarget,tag=hentai] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 216 if entity @a[tag=assassinTarget,tag=villager] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 217 if entity @a[tag=assassinTarget,tag=wraith] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 218 if entity @a[tag=assassinTarget,tag=voodoo] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 219 if entity @a[tag=assassinTarget,tag=bewitcher] run function ww:player/death/wolf

# 猜错 -> 目标死亡
execute if entity @s[tag=fool] if score @s voteTrigger matches 201 unless entity @a[tag=assassinTarget,tag=seer] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 202 unless entity @a[tag=assassinTarget,tag=witch] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 203 unless entity @a[tag=assassinTarget,tag=hunter] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 204 unless entity @a[tag=assassinTarget,tag=knight] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 205 unless entity @a[tag=assassinTarget,tag=guardian] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 206 unless entity @a[tag=assassinTarget,tag=cupid] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 207 unless entity @a[tag=assassinTarget,tag=thief] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 208 unless entity @a[tag=assassinTarget,tag=ninja] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 209 unless entity @a[tag=assassinTarget,tag=siren] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 210 unless entity @a[tag=assassinTarget,tag=digger] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 211 unless entity @a[tag=assassinTarget,tag=detective] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 212 unless entity @a[tag=assassinTarget,tag=trickster] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 213 unless entity @a[tag=assassinTarget,tag=masochist] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 214 unless entity @a[tag=assassinTarget,tag=sadist] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 215 unless entity @a[tag=assassinTarget,tag=hentai] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 216 unless entity @a[tag=assassinTarget,tag=villager] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 217 unless entity @a[tag=assassinTarget,tag=wraith] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 218 unless entity @a[tag=assassinTarget,tag=voodoo] run function ww:player/death/wolf
execute if entity @s[tag=fool] if score @s voteTrigger matches 219 unless entity @a[tag=assassinTarget,tag=bewitcher] run function ww:player/death/wolf

# --- 清理工作 & 重新发书 ---
execute if score @s voteTrigger matches 201.. run function ww:book/assassin_wolf
execute if score @s voteTrigger matches 201.. run tag @a[tag=assassinTarget] remove assassinTarget
execute if score @s voteTrigger matches 201.. run scoreboard players reset @s voteTrigger
