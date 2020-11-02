extends Control
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/VSplitContainer/BubblesButton.grab_focus()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func button_pressed():
	AutoKing.currentScene = ""


func _on_BubblesButton_pressed():
	button_pressed()
	get_tree().change_scene("res://src/Scenes/bubblesScene.tscn")
	pass # Replace with function body.


func _on_StarButton_pressed():
	button_pressed()
	get_tree().change_scene("res://src/Scenes/starScene.tscn")
	pass # Replace with function body.


func _on_ShapesButton_pressed():
	button_pressed()
	get_tree().change_scene("res://src/Scenes/shapesScene.tscn")
	pass # Replace with function body.


#func _on_Button_pressed():
##	OS.shell_open("res://Files/Controls.txt")
#	pass # Replace with function body.


func _on_QuitButton_pressed():
	print("Escaped program.")
	get_tree().quit()
