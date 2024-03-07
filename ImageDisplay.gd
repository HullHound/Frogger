extends Node2D
class_name ImageDisplay

@export var texture: Texture2D
@export var texture_offset: Vector2 = Vector2(16,0)

@export var initial_value = 2
var current_value = 0

signal value_changed(value:int)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_value = initial_value
	displayValue()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void: 
	pass

func displayValue():
	for item in range(1, current_value + 1):
		var sprite = Sprite2D.new()
		sprite.texture = texture
		sprite.position = (item - 1) * texture_offset
		add_child(sprite)
		
func increment_value(value: int):
	current_value += value
	displayValue()
	value_changed.emit(current_value)
	
func decrement_value(value: int):
	current_value -= value
	displayValue()
	value_changed.emit(current_value)
