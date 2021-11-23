extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_root().set_transparent_background(true)
#	$StarParticles.position = Vector2((OS.window_size.x / 2), (OS.window_size.y /2))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _input(event):
	if event.is_action_pressed("add"):
		if $Control/MarginContainer/StarParticles.amount > 700000:
			print("All full on stars!")
			return
		$Control/MarginContainer/StarParticles.amount *= 1.2
		print("More stars!")
		print($Control/MarginContainer/StarParticles.amount)
	if event.is_action_pressed("subtract"):
		$Control/MarginContainer/StarParticles.amount *= 0.8
		print("Less stars!")
