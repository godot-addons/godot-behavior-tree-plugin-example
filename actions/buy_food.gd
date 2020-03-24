extends "res://addons/godot-behavior-tree-plugin/action.gd"


func tick(tick: Tick) -> int:
	
	tick.blackboard.set("Money", tick.blackboard.get("Money") - tick.blackboard.get("FoodPrice"))
	tick.blackboard.set("Food", tick.blackboard.get("Food") + 1)
	
	print("Buying Food:")
	print("\tFood: ", tick.blackboard.get("Food"), " (+1)")
	print("\tMoney: ", tick.blackboard.get("Money"), " (-", tick.blackboard.get("FoodPrice"),")")
	
	return OK
