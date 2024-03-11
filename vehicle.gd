@tool
extends Node2D

@export var texture: Texture2D:
	set(value):
		$Sprite2D.texture = value
	get: 
		return $Sprite2D.texture
@export var speed: Vector2
@export var rotation_offset: Vector2
@export var flip_h: bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$Sprite2D.texture = texture
	$Sprite2D.flip_h = flip_h
	$AutoMover2D.speed = speed
	$VisibilityOffset2D.offset_amount = rotation_offset
