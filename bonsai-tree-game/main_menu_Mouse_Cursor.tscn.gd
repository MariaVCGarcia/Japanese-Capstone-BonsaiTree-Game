extends Control

const GAME_ASSETS__10 = preload("uid://cc4s6up5mwyba")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_custom_mouse_cursor(GAME_ASSETS__10,Input.CURSOR_POINTING_HAND)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_New_Game_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")
