extends Node2D
@onready var transiton=$transition

#functions for pause menu mouse and scene change
const GAME_ASSETS__10 = preload("uid://c6n6egph8k6m7")

func _on_pause_pressed() -> void:
	Input.set_custom_mouse_cursor(GAME_ASSETS__10,Input.CURSOR_POINTING_HAND)
	get_tree().change_scene_to_file("res://scenes/pausemenue.tscn")


func _on_timer_timeout() -> void:
	SceneTransition.fade_in()
	get_tree().change_scene_to_file("res://scenes/gameover.tscn")

	
