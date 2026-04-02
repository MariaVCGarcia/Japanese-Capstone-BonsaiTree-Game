class_name GameController extends Node

@export var main_container: Node2D
@export var gui_container: Control

var curent_gui_scene
var Curent_Main_Scene
var current_scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.game_controller = self
	curent_gui_scene = $GUI/Main_Menu


# Called every frame. 'delta' is the elapsed time since the previous frame.
func Change_gui_scene(New_scene: String, delete: bool= true, keep_running:bool = false) -> void:
	if Change_gui_scene!= null:
		if delete:
			curent_gui_scene.queue_free() #removes current scene
		elif keep_running:
			curent_gui_scene.visble =false #keeps in memory and running 
		else:
			gui_container.remove_child(curent_gui_scene)#keeps in memeory, dose not run 
	var  new = load(New_scene).instantiate()
	gui_container.add_child(new)
	curent_gui_scene = new


func Change_Main_scene(New_scene: String, delete: bool= true, keep_running:bool = false) -> void:
	if Change_Main_scene != null:
		if delete:
			Curent_Main_Scene.queue_free() #removes current scene
		elif keep_running:
			Curent_Main_Scene.visble =false #keeps in memory and running 
		else:
			main_container.remove_child(Curent_Main_Scene)#keeps in memeory, dose not run 
	var  new = load(New_scene).instantiate()
	main_container.add_child(new)
	curent_gui_scene = new
