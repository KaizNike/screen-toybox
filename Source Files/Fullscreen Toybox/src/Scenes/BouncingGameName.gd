extends Label
var dir = Vector2()
var speed = 15

func _ready():
	get_tree().get_root().connect("size_changed", Callable(self, "reset_pos"))
	randomize()
	dir = Vector2(randf_range(-1, 1), randf_range(-1,1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.position.y + self.size.y > get_window().size.y:
		_invert_dir("up")
	elif self.position.y < 0:
		_invert_dir("down")
	if self.position.x + self.size.x > get_window().size.x:
		_invert_dir("left")
	elif self.position.x < 0 - DisplayServer.screen_get_size(1).x:
		_invert_dir("right")
	self.position += dir * speed
	
func _invert_dir(direction):
	if direction == "up":
		dir.y *= -1
	elif direction == "down":
		dir.y *= -1
	elif direction == "left":
		dir.x *= -1
	elif direction == "right":
		dir.x *= -1
	_randomize_colors()

func _randomize_colors():
	self.modulate = Color(randf_range(0, 1), randf_range(0, 1), randf_range(0, 1))
	
func reset_pos():
	position.x = get_window().size.x / 2
	position.y = get_window().size.y / 2
