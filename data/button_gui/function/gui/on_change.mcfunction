# << execute as @e[type=chest_minecart,tag=Button.GUI] at @s if インベントリが変更されたとき>>

# data modify entity @s CustomName set value '[{"text":"TestGUI"},{"text": "\\uF80A\\uF808\\uF806\\uE001", "color": "white"}]'

# GUIのアイテムをクリックしたかどうかを判定
  function button_gui:gui/test_1/pages/0/check
  function button_gui:gui/test_1/pages/1/check

  function button_gui:gui/cheat_menu/check

# GUIのアイテムがドロップしたときの処理
  execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{name: "Test1", page:"0"}}}}}] run function button_gui:gui/test_1/pages/0/put_gui
  execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{name: "Test1", page:"1"}}}}}] run function button_gui:gui/test_1/pages/1/put_gui

  kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{}}}}}]
