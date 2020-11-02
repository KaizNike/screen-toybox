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

#func _input(event):
#	if Input.is_action_just_pressed("ui_cancel"):
#		print("Escaped program.")
#		#save()
#		get_tree().quit()


func save():
	pass
