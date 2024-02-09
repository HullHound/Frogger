extends Node
class_name DirectionInputMover2D

@export var target: Node2D
@export var movement_amount = 16

func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_released("Up"):
		target.position.y -= movement_amount
	elif event.is_action_released("Down"):
		target.position.y += movement_amount
	elif event.is_action_released("Left"):
		target.position.x -= movement_amount
	elif event.is_action_released("Right"):
		target.position.x += movement_amount
