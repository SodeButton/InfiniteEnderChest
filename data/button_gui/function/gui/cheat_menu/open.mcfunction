#searchにチェストトロッコを開いたプレイヤーのIDを代入
  scoreboard players operation #search Button.GUI.ID = @s Button.GUI.ID

# 開いた人とチェストトロッコのIDが一致したらGUIを表示
  execute at @s as @e[type=chest_minecart,sort=nearest,limit=1,tag=Button.GUI.CheatMenu] if score @s Button.GUI.ID = #search Button.GUI.ID run function button_gui:gui/cheat_menu/pages/menu/0/put_gui

# 開いた人とチェストトロッコのIDが一致しなかったらGUIを閉じる
  execute at @s as @e[type=item_display,sort=nearest,limit=1,tag=Button.GUI.CheatMenu] unless score @s Button.GUI.ID = #search Button.GUI.ID run tag @s add Button.GUI.Close

  execute at @s as @e[type=chest_minecart,sort=nearest,limit=1,tag=Button.GUI.CheatMenu] unless score @s Button.GUI.ID = #search Button.GUI.ID run schedule function button_gui:gui/close 1t

# リセット
  advancement revoke @s only button_gui:interacted_gui_cheat_menu