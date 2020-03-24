extends "res://addons/godot-behavior-tree-plugin/action.gd"


func tick(tick: Tick) -> int:
	
	tick.blackboard.set("Food", tick.blackboard.get("Food") + 1)
	
	print("Hunting:")
	print("\tFood: ", tick.blackboard.get("Food"), (" (+1)"))
	
	return OK
