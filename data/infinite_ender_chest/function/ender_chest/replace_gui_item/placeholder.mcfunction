$execute if items entity @s container.$(slot) *[!custom_data~{"Button.GUI.Item":{}}] run item replace entity @p player.cursor from entity @s container.$(slot)

$item replace entity @s container.$(slot) with writable_book[max_stack_size=1, hide_tooltip={}, custom_model_data=1, custom_data={"Button.GUI.Item": {id:"GUI.Placeholder", name:"$(name)", page:"$(page)"}}] 1