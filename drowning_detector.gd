extends Node2D

signal drowned

var water_collision: int = 0
var wasDrowningLastFrame = false

var platform_collisions: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var isDrowning = water_collision > 0 && platform_collisions <= 0
	if isDrowning && !wasDrowningLastFrame:
		drowned.emit()
		
	wasDrowningLastFrame= isDrowning

func _on_water_detector_body_entered(body: Node2D) -> void:
	water_collision += 1


func _on_water_detector_body_exited(body: Node2D) -> void:
	water_collision -= 1


func _on_platform_detector_area_entered(area: Area2D) -> void:
	platform_collisions += 1


func _on_platform_detector_area_exited(area: Area2D) -> void:
	platform_collisions -= 1
