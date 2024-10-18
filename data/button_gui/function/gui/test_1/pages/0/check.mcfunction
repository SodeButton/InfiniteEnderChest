
execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item":{}, "Button.GUI.IsDrop": true}]
execute if data storage button_gui:gui {isClicked:true} run return 0

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {id:"GUI.Next", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/1/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {"id": "GUI.Placeholder", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p wooden_sword[minecraft:custom_data~{"Button.GUI.Item": {id:"GUI.Buy", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound entity.villager.trade master @p
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run give @p wooden_sword 1

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p stone_sword[minecraft:custom_data~{"Button.GUI.Item": {id:"GUI.Buy", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound entity.villager.trade master @p
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run give @p stone_sword 1

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p iron_sword[minecraft:custom_data~{"Button.GUI.Item": {id:"GUI.Buy", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound entity.villager.trade master @p
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run give @p iron_sword 1

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p golden_sword[minecraft:custom_data~{"Button.GUI.Item": {id:"GUI.Buy", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound entity.villager.trade master @p
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run give @p golden_sword 1

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p diamond_sword[minecraft:custom_data~{"Button.GUI.Item": {id:"GUI.Buy", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound entity.villager.trade master @p
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run give @p diamond_sword 1

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p netherite_sword[minecraft:custom_data~{"Button.GUI.Item": {id:"GUI.Buy", name:"Test1", page: "0"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/test_1/pages/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound entity.villager.trade master @p
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run give @p netherite_sword 1

# リセット
  data remove storage button_gui:gui isClicked