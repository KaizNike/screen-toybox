extends SubViewport

func _ready() -> void:
	world_2d = get_tree().get_root().world_2d
	#size_2d_override = DisplayServer.screen_get_size(1)
