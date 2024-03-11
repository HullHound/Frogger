extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_flag_picked_up() -> void:
	$FlagDisplay.increment_value(1)
	$PickupSound.play()

func _on_flag_display_value_changed(value: int) -> void:
	if value >= 5:
		$GameOverScreen.display("You win!")
		$Player.queue_free()

func _on_lives_display_value_changed(value: int) -> void:
	if value <= 0:
		$GameOverScreen.display("You lose!")
		$Player.queue_free()

func _on_player_player_died() -> void:
	$LivesDisplay.decrement_value(1)


func _on_play_area_area_exited(area: Area2D) -> void:
	$Player.died()
