extends Area2D

var Float = 2
var posXInitial
var wave = 0.2
var is_popped = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	randomize()
	posXInitial = position.x
	set_process_input(true)
#	var pitchRand = self.scale.x
	$AudioStreamPlayer2D.pitch_scale = 1 / self.scale.x
	
	
	#self.modulate = Color(0, 0, 1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	position.x += wave
	position.y -= Float
	if (position.x - posXInitial) > 20:
		wave *= -1
	if (position.x - posXInitial) < -20:
		wave *= -1
	

func _input_event(viewport, event, shape_idx):
	if not is_popped:
		if event.is_action_pressed("click"):
#			$AnimationPlayer.play("pop")
#			AutoKing.NumPopped += 1
			popped()
		if event is InputEventMouseMotion and AutoKing.MegaPopping:
#			$AnimationPlayer.play("pop")
#			AutoKing.NumPopped += 1
			popped()


func _on_Timer_timeout():
	$AnimationPlayer.play("fade_out")
	pass # Replace with function body.

func popped():
	is_popped = true
	$AnimationPlayer.play("pop")
	AutoKing.NumPopped += 1
	
