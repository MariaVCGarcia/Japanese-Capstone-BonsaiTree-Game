extends Control
const GAME_ASSETS__10 = preload("uid://c6n6egph8k6m7")

func _return() -> void:
	Input.set_custom_mouse_cursor(GAME_ASSETS__10,Input.CURSOR_POINTING_HAND)
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _pause()-> void:
	Input.set_custom_mouse_cursor(GAME_ASSETS__10,Input.CURSOR_POINTING_HAND)
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
