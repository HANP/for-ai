function ww:book/init

data modify block 0 0 0 Items[0].tag.title set value '灵媒说明书'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"灵媒说明书","color":"aqua","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.designated set value 1b

# 第一页：灵媒介绍与主要技能
data modify block 0 0 0 Items[0].tag.pages append value '[{"text": "<好人陣營>", "color": "red", "bold": true}, {"text": "  [灵媒] (spirit)", "color": "dark_blue", "bold": true}, {"text": "\\n"}, {"text": "[ 蠢 ]\\n", "color": "aqua", "bold": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "點我", "color": "white", "italic": false}]}, "clickEvent": {"action": "change_page", "value": "2"}}, {"text": "\\n"}, {"text": "\\n[ 主要技能 ]:\\n", "color": "black"}, {"text": "  查驗死人職業", "color": "dark_aqua", "bold": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "(夜晚限定) 選擇一名已死亡的玩家並查驗其職業", "color": "white", "italic": false}]}}, {"text": "\\n"}, {"text": "  灵媒日記", "color": "dark_aqua", "bold": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "(早晚皆有) 可以查看所有灵媒查驗的結果", "color": "white", "italic": false}]}}, {"text": "\\n"}, {"text": "\\n[ 防護技能 ]:\\n", "color": "black"}, {"text": "  無敵護盾", "color": "dark_aqua", "bold": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "(夜晚限定) 自身無敵10秒", "color": "white", "italic": false}]}}, {"text": "\\n"}]'

# 第二页：蠢灵媒介绍
data modify block 0 0 0 Items[0].tag.pages append value '[{"text": "<好人陣營>", "color": "red", "bold": true}, {"text": "  [蠢灵媒] (Stupid spirit)", "color": "dark_blue", "bold": true}, {"text": "\\n\\n"}, {"text": "查驗死人職業", "color": "dark_aqua", "bold": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "(夜晚限定) 查驗死人時會顯示一個隨機的職業, 錯誤訊息將永遠留在日記裡", "color": "white", "italic": false}]}}, {"text": "\\n\\n"}]'

# 将书给予玩家热点栏的第8个位置 (hotbar.7 是第8格，从0开始计数)
loot replace entity @s hotbar.7 mine 0 0 0 air{drop_contents:true}