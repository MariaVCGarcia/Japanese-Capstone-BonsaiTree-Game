class_name GameController extends Node
@export var GUI : Main_menu
var curent_GUI_scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.game_controller = self
	curent_GUI_scene = $GUI/Main_Menu


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
