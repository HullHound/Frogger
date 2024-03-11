@tool
extends Node2D

signal picked_up

@export var texture: Texture2D:
	set(value):
		if get_node_or_null("Sprite2D") != null:
			$Sprite2D.texture = value
	get:
		return $Sprite2D.texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = texture

func _on_area_2d_area_entered(_area: Area2D) -> void:
	picked_up.emit()
	queue_free()
