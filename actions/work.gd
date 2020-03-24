extends "res://addons/godot-behavior-tree-plugin/action.gd"


func tick(tick: Tick) -> int:
	
	tick.blackboard.set("Money", tick.blackboard.get("Money") + tick.blackboard.get("Wage"))
	
	print("Working:")
	print("\tMoney: " , tick.blackboard.get("Money"), " (+", tick.blackboard.get("Wage"), ")" )

	return OK
