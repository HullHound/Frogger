extends Node2D

@export var speed: Vector2
@export var rotation_offset: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AutoMover2D.speed = speed
	$VisibilityOffset2D.offset_amount = rotation_offset
