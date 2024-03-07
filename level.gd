extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_flag_picked_up() -> void:
	$FlagDisplay.increment_value(1)

func _on_flag_display_value_changed(value: int) -> void:
	if value >= 5:
		print('You win!')
