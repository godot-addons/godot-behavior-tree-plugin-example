extends "res://addons/godot-behavior-tree-plugin/action.gd"


func tick(tick: Tick) -> int:
	
	tick.blackboard.set("Food", tick.blackboard.get("Food") - 1)
	tick.blackboard.set("Hunger", tick.blackboard.get("Hunger") - 20)
	
	print("Eating:")
	print("\tHunger: " , tick.blackboard.get("Hunger"), " (-20)")
	print("\tFood: ", tick.blackboard.get("Food"), (" (-1)"))
	
	return OK
