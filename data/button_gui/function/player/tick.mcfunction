## プレイヤーの常時実行
# << execute as @a at @s run function button_gui:player/tick >>

# Button.GUI.Shop1のタグが付いた村人を見た時／見てないとき
  execute if predicate button_gui:look_at_villager run function button_gui:player/teleport {"gui_name": "Test1"}

  execute unless predicate button_gui:look_at_villager if score @s Button.GUI.ID.Test1 matches 0.. run function button_gui:player/close {"gui_name": "Test1"}

# プレイヤーがアイテムを持っている時／持っていない時
  execute if items entity @s weapon.* *[custom_data={"Button.GUI.CheatMenu": 1b}] run function button_gui:player/teleport {"gui_name": "CheatMenu"}
  
  execute unless items entity @s weapon.* *[custom_data={"Button.GUI.CheatMenu": 1b}] if score @s Button.GUI.ID.CheatMenu matches 0.. run function button_gui:player/close {"gui_name": "CheatMenu"}

