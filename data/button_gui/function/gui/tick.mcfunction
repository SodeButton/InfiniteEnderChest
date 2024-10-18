# GUIの常時実行
# << execute as @e[type=chest_minecart,tag=Button.GUI] at @s >>

# チェストトロッコのインベントリをストレージに保存
  data modify storage button_gui:gui current set from entity @s Items

# チェストトロッコに乗ってるMakerのdata.previousをストレージに保存
  # execute on passengers run data modify storage button_gui:gui previous set from entity @s data.previous

# チェストトロッコに乗ってるMakerのdata.previousに保存したチェストトロッコのインベントリで置き換え
# 置き換えれたら インベントリが変更されたとき、 置きかえれなかったら インベントリが変更されていない
  execute on passengers store result score #bool Button.GUI.Temp run data modify entity @s data.previous set from storage button_gui:gui current

# インベントリが変更されたとき
  execute if score #bool Button.GUI.Temp matches 1 run function button_gui:gui/on_change

# リセット
  data remove storage button_gui:gui current
  # data remove storage button_gui:gui previous
  scoreboard players reset #bool Button.GUI.Temp

# function button_gui:gui/on_change