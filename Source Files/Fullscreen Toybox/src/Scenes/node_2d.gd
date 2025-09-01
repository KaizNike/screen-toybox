extends Node2D

func _ready() -> void:
	#position = Vector2i.ZERO
	position.x = -DisplayServer.screen_get_size(1).x
	#position.y = DisplayServer.screen_get_size(1).y/2
	print(position)
	print("Screens:", DisplayServer.get_screen_count())
