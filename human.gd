extends Node


export(int, 100) var initial_hunger = 70
export(int, 1024) var initial_food = 0
export(int, 1024) var initial_money = 0

export(int, 1024) var food_price = 5
export(int, 1024) var wage = 2
export(int, 100) var max_hunger = 80


onready var blackboard = $Blackboard
onready var behavior_tree = $BehaviorTree

var current_day: int = 0


func _ready() -> void:
	
	blackboard.set("Hunger", initial_hunger)
	blackboard.set("Food", initial_food)
	blackboard.set("Money", initial_money)
	
	blackboard.set("FoodPrice", food_price)
	blackboard.set("Wage", wage)
	blackboard.set("MaxHunger", max_hunger)
	
	update()


func update() -> void:
	
	blackboard.set("Hunger", blackboard.get("Hunger") + 10)
	
	current_day += 1
	
	print("\n--- ", current_day, ". Day ---")
	print("Hunger: " , blackboard.get("Hunger"))
	print("Food: ", blackboard.get("Food"))
	print("Money: " , blackboard.get("Money"))
	print("\n")
	
	behavior_tree.tick(self, blackboard)
