extends CenterContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_texture_button_pressed() -> void:
	get_tree().reload_current_scene()
	
func display(message: String):
	$NinePatchRect/VBoxContainer/Label.text = message
	self.visible = true
