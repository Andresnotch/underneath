extends CharacterBody2D
var _var = preload("movement_timer.gd")

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var movement

func _init():
	movement = MovementTimer.new()

func _physics_process(delta):

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var horizontal = Input.get_axis("A", "D")
	var vertical = Input.get_axis("W", "S")
	if horizontal:
		velocity.x = horizontal * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if vertical:
		velocity.y = vertical * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

func _process(delta):
	if velocity:
		movement.moving(delta)
	else:
		movement.not_moving(delta)
			
			
	$speed.set("text", str(movement))
	
