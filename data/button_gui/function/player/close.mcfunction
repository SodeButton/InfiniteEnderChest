
# << execute as @a at @s unless [predicate/items] >>
# チェストトロッコ削除

# #searchにプレイヤーのIDを代入
  scoreboard players operation #search Button.GUI.ID = @s Button.GUI.ID

# プレイヤーと紐づけされたチェストトロッコを検索、GUIのIDが一致したらNBT:Itemsを削除（インベントリ消す）
  execute as @e[type=chest_minecart,tag=Button.GUI] if score @s Button.GUI.ID = #search Button.GUI.ID run data remove entity @s Items

# プレイヤーと紐づけされたIDを持つButton.GUIをキル
  execute as @e[tag=Button.GUI] if score @s Button.GUI.ID = #search Button.GUI.ID run kill @s

# プレイヤーのIDをリセット
  scoreboard players reset @s Button.GUI.ID
  $scoreboard players reset @s Button.GUI.ID.$(gui_name)
