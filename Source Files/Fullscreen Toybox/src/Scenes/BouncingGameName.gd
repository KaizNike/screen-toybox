extends Label
var dir = Vector2()
var speed = 15

func _ready():
	randomize()
	dir = Vector2(rand_range(-1, 1), rand_range(-1,1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.rect_position.y + self.rect_size.y > OS.window_size.y:
		_invert_dir("up")
	elif self.rect_position.y < 0:
		_invert_dir("down")
	if self.rect_position.x + self.rect_size.x > OS.window_size.x:
		_invert_dir("left")
	elif self.rect_position.x < 0:
		_invert_dir("right")
	self.rect_position += dir * speed
	
func _invert_dir(var direction):
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
	self.modulate = Color(rand_range(0, 1), rand_range(0, 1), rand_range(0, 1))
