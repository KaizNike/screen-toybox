extends GPUParticles2D

func _ready() -> void:
	visibility_rect = Rect2(-DisplayServer.screen_get_size(1).x,-100,DisplayServer.screen_get_size(1).x+DisplayServer.screen_get_size(-1).x,200)
