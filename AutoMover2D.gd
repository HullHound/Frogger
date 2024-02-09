extends Node
class_name  AutoMover2D

@export var target: Node2D
@export var speed: Vector2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	target.position += speed * delta
