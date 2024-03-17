extends Node2D
signal too_much_noise


func _on_timer_too_much_noise():
	too_much_noise.emit()
