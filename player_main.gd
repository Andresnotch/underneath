extends Node2D
signal moved(delta: float)

func _on_body_moved(delta):
	moved.emit(delta)
