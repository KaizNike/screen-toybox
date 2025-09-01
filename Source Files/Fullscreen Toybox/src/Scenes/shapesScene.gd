extends Node

var dudes = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	AutoKing.currentScene = "shapes"
	get_tree().get_root().set_transparent_background(true)
	#DisplayServer.set_screen_stretch(SceneTree.STRETCH_MODE_2D, SceneTree.STRETCH_ASPECT_KEEP_HEIGHT,Vector2(1920,1080))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	#if event.is_action_pressed("ui_cancel"):
		#get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_DISABLED,SceneTree.STRETCH_ASPECT_KEEP_HEIGHT,Vector2(1920,1080))
	if event.is_action_pressed("add"):
		if dudes >= 2032:
			print("end")
			return
		dudes += 1
		print(dudes)
		var GuyScene = load("res://src/Bodies/Characters/Player/elthenGuy.tscn")
		print("NEWGUY")
		var newGuy = GuyScene.instantiate()
		newGuy.position = Vector2((get_window().size.x / 2), (get_window().size.y / 2))
		get_parent().add_child(newGuy)


func save():
	pass
