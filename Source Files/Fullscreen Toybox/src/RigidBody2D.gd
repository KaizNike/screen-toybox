extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var drag_enabled = false

export var speed = 75

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	pass
		


var dragging = false
var drag_start = Vector2()

func _input(event):
#	if event.is_action_pressed("click") and not dragging:
#		dragging = true
#		drag_start = get_global_mouse_position()
	if event.is_action_released("click") and dragging:
		dragging = false
		var drag_end = get_global_mouse_position()
		var dir = drag_start - drag_end
		apply_impulse(Vector2(), -dir * 1)
		
func _input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton:
#		if event.button_index == BUTTON_LEFT and event.pressed:
#			print("clicked")
	if event.is_action_pressed("click"):
#		print("Dragging")
		dragging = true
		drag_start = get_global_mouse_position()
