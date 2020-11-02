extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_root().set_transparent_background(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _input(event):
	if event.is_action_pressed("add"):
		$StarParticles.amount *= 1.2
		print("More stars!")
		print($StarParticles.amount)
	if event.is_action_pressed("subtract"):
		$StarParticles.amount *= 0.8
		print("Less stars!")
