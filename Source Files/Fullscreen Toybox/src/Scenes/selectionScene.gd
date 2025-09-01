extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_root().set_transparent_background(true)
	#get_window().always_on_top = (false)
	#get_window().always_on_top = (true)
	#$Window/SubViewportContainer/SubViewport/Camera2D.global_position = $Node2D.global_position
	AutoKing.currentScene = "selection"
	%Camera2D.custom_viewport = %SubViewport
	%Camera2D.enabled = true
