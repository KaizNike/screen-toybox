extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_root().set_transparent_background(true)
	OS.set_window_always_on_top(false)
	OS.set_window_always_on_top(true)
	AutoKing.currentScene = "selection"

