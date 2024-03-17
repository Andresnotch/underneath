extends Node2D
class_name MovementTimer
signal too_much_noise

@export var movement: float = 0
@export var limit: float = 1

func moving(delta):
	movement += delta

func not_moving(delta):
	if movement > 0:
		if movement > delta:
			movement -= delta
		else:
			movement = 0
	if movement > limit:
		too_much_noise.emit()
	
func _to_string():
	return str(movement)
