extends "res://addons/godot-behavior-tree-plugin/condition.gd"


func tick(tick: Tick) -> int:
	
	if tick.blackboard.get("Hunger") >= tick.blackboard.get("MaxHunger"):
		return OK
	
	else:
		return FAILED 

