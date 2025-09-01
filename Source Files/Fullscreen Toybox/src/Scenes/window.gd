extends Window

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		if AutoKing.currentScene == "selection":
			print("Escaped program.")
			#save()
			get_tree().quit()
		else:
#			save()
			get_tree().change_scene_to_file("res://src/Scenes/selectionScene.tscn")
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
		if get_parent().randomizeColors:
			get_parent().randomizeColors = false
			print("Random colors off")
		elif not get_parent().randomizeColors:
			get_parent().randomizeColors = true
			print("Random colors on")
	if event.is_action_pressed("right_click"):
		if AutoKing.MegaPopping:
			AutoKing.MegaPopping = false
			print("Mega popping mode off")
		elif not AutoKing.MegaPopping:
			AutoKing.MegaPopping = true
			print("Mega popping mode now on, enjoy!")
