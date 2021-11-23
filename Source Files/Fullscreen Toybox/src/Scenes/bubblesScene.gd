extends Node

export (PackedScene) onready var bubbleScene

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var randomizeColors = false

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	get_tree().get_root().set_transparent_background(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var bubble_instance = bubbleScene.instance()
	var X = rand_range(0, OS.window_size.x)
	var Y = OS.window_size.y
	var sizeXY = rand_range(0.3, 3.5)
#	var sizeX = rand_range(0.5, 3)
#	var sizeY = rand_range(0.5, 3)
	bubble_instance.scale.x = sizeXY
	bubble_instance.scale.y = sizeXY
	bubble_instance.position = Vector2(X, Y)
	if randomizeColors:
#		print("make random")
		bubble_instance.modulate = Color(rand_range(0, 1), rand_range(0, 1), rand_range(0, 1))
	$SpawnedBubbles.add_child(bubble_instance)
	pass # Replace with function body.
	
func _input(event):
#	if Input.is_action_just_pressed("ui_cancel"):
#		print("Escaped program.")
#		#save()
#		get_tree().quit()
	if event.is_action_pressed("add"):
		if $Timer.wait_time < 0.002:
			return
			print("full on bubbles")
		$Timer.wait_time *= 0.95
		print($Timer.wait_time)
	if event.is_action_pressed("subtract"):
		$Timer.wait_time *= 1.05
		print($Timer.wait_time)
	if event.is_action_pressed("randomize"):
		if randomizeColors:
			randomizeColors = false
			print("Random colors off")
		elif not randomizeColors:
			randomizeColors = true
			print("Random colors on")
	if event.is_action_pressed("right_click"):
		if AutoKing.MegaPopping:
			AutoKing.MegaPopping = false
			print("Mega popping mode off")
		elif not AutoKing.MegaPopping:
			AutoKing.MegaPopping = true
			print("Mega popping mode now on, enjoy!")
