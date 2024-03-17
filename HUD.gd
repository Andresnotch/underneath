extends Node2D
var noisevar
var player_moved: bool
# Called when the node enters the scene tree for the first time.
func _ready():
	noisevar = $NoiseBar


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not player_moved:
		noisevar.value -= delta
	player_moved = false


func _on_player_moved(delta):
	noisevar.value += delta
	player_moved = true
	
