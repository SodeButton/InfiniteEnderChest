
execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item":{}, "Button.GUI.IsDrop": true}]
execute if data storage button_gui:gui {isClicked:true} run return 0

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {"id": "GUI.Placeholder", name:"CheatMenu", page: "gamemode"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/cheat_menu/pages/gamemode/put_gui

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {"id": "GUI.Previous", name:"CheatMenu", page: "gamemode"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/cheat_menu/pages/menu/0/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {"id": "GUI.Button.Creative", name:"CheatMenu", page: "gamemode"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/cheat_menu/pages/gamemode/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run gamemode creative @p

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {"id": "GUI.Button.Survival", name:"CheatMenu", page: "gamemode"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/cheat_menu/pages/gamemode/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run gamemode survival @p

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {"id": "GUI.Button.Adventure", name:"CheatMenu", page: "gamemode"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/cheat_menu/pages/gamemode/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run gamemode adventure @p

execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item": {"id": "GUI.Button.Spectator", name:"CheatMenu", page: "gamemode"}}]
execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/cheat_menu/pages/gamemode/put_gui
execute if data storage button_gui:gui {isClicked:true} run playsound ui.button.click master @p
execute if data storage button_gui:gui {isClicked:true} run gamemode spectator @p

# リセット
  data remove storage button_gui:gui isClicked