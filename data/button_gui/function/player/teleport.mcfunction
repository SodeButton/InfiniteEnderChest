
# << execute as @a at @s >>
# << execute if [predicate/items] >>

# プレイヤーのチェストトロッコがなかったら召喚する
  $execute unless score @s Button.GUI.ID matches 1.. run function button_gui:player/open {"gui_name": $(gui_name)}

# #searchにプレイヤーのIDを代入
  scoreboard players operation #search Button.GUI.ID = @s Button.GUI.ID

# プレイヤーと紐づけされたチェストトロッコを検索、GUIのIDが一致したらテレポート
  execute at @s as @e[type=item_display,tag=Button.GUI] if score @s Button.GUI.ID = #search Button.GUI.ID run tp @s ~ ~1 ~

# 他のプレイヤーに開かれたら上へテレポート
  execute at @s as @e[type=item_display,tag=Button.GUI,tag=Button.GUI.Close] if score @s Button.GUI.ID = #search Button.GUI.ID run tp @s ~ ~8.62 ~
