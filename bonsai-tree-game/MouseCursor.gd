extends Node2D

const GAME_ASSETS__10 = preload("uid://c6n6egph8k6m7")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_custom_mouse_cursor(GAME_ASSETS__10,Input.CURSOR_POINTING_HAND)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
