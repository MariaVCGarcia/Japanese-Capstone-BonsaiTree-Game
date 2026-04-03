extends Control

const GAME_ASSETS__10 = preload("uid://c6n6egph8k6m7")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_custom_mouse_cursor(GAME_ASSETS__10,Input.CURSOR_POINTING_HAND)
	

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
