extends Node

var MegaPopping = false
var onTop = true

var NumPopped = 0
var currentScene = ""

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		if currentScene == "selection":
			print("Escaped program.")
			#save()
			get_tree().quit()
		else:
#			save()
			get_tree().change_scene("res://src/Scenes/selectionScene.tscn")
	if Input.is_action_just_pressed("mode"):
		if onTop:
			print("Changed mode to false.")
			onTop = false
			OS.set_window_always_on_top(false)
#			ProjectSettings.set_setting("display/window/size/always_on_top", false)
#			ProjectSettings.save()
#			print(ProjectSettings.get_setting("display/window/size/always_on_top"))
#			get_tree().reload_current_scene()
		else:
			print("Changed mode to true.")
			onTop = true
			OS.set_window_always_on_top(true)
#			ProjectSettings.set_setting("display/window/size/always_on_top", true)
#			ProjectSettings.save()
#			get_tree().reload_current_scene()
			
