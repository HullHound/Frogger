extends Node2D

@export var respawn_location: Marker2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_damage_source_detector_area_entered(area: Area2D) -> void:
	died()
	
func _on_drowning_detector_drowned() -> void:
	died()
	
func died() -> void:
	$DirectionInputMover2D.enabled = false
	$Sprite2D.visible = false
	$BloodSplatter.emitting = true
	await $BloodSplatter.finished
	position = respawn_location.position
	$Sprite2D.visible = true
	$DirectionInputMover2D.enabled = true
	$RespawnEffect.emitting = true
