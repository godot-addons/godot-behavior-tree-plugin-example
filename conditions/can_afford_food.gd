extends "res://addons/godot-behavior-tree-plugin/condition.gd"


func tick(tick: Tick) -> int:
	
	if tick.blackboard.get("Money") >= tick.blackboard.get("FoodPrice"):
		return OK
	
	else:
		return FAILED
