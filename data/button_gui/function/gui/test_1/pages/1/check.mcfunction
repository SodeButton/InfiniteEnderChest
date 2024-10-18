execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item":{}, "Button.GUI.IsDrop": true}]
execute if data storage button_gui:gui {isClicked:true} run return 0

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item":{"id": "GUI.Previous", name:"Test1", page: "1"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item":{"id": "GUI.Placeholder", name:"Test1", page: "1"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/1/put_gui

# リセット
  data remove storage button_gui:gui isClicked