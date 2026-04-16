extends Control


# Called when the node enters the scene tree for the first time.
func _return() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _pause()-> void:
	get_tree().paused = true 

func _enter()-> void: 
	if Input.is_action_just_pressed("pause") and get_tree().paused == false:
		_pause()
	elif Input.is_action_just_pressed("pause") and get_tree().paused == true:
		_return()

func _on_return_pressed() -> void:
	_return()

func _on_quit_pressed() -> void:
	get_tree().quit()
