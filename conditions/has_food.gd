extends "res://addons/godot-behavior-tree-plugin/condition.gd"


func tick(tick: Tick) -> int:
	
	if tick.blackboard.get("Food") >= 1:
		return OK
	
	else:
		return FAILED
