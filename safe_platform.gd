@tool
extends Node2D

@export var speed: Vector2
@export var rotation_offset: Vector2

@export var tile_offset_amount: Vector2 = Vector2(16, 0)
@export_range(1, 5) var length: int:
	set(value):
		inner_length = value
		setupLength()
	get:
		return inner_length
		
var inner_length = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AutoMover2D.speed = speed
	$VisibilityOffset2D.offset_amount = rotation_offset
	setupLength()

func setupLength():
	
	if $Area2D ==null:
		return
	
	for child in $Area2D.get_children():
		child.queue_free()
		
	$PlayerMover2D.clearCollisionShapes()
	
	for item in range(1, length + 1):
		var sprite = $Templates/Sprite2D.duplicate() as Sprite2D
		var shape = $Templates/CollisionShape2D.duplicate() as CollisionShape2D
		
		sprite.position = (item - 1) * tile_offset_amount
		shape.position += (item - 1) * tile_offset_amount
		
		$Area2D.add_child(sprite)
		$Area2D.add_child(shape)

		$PlayerMover2D.addCollisionShape(shape.duplicate())
