extends Node2D
@onready var animation = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_player_too_much_noise():
	animation.play("default")
