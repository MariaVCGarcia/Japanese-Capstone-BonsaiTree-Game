extends Node

const save_load = " user://SaveFile.json"

var game_to_save: Dictionary ={
	"Progress_bar_value":0.0,
	"new_data_to_save" : false 
}
func _ready() -> void:
	_load()
# Called when the node enters the scene tree for the first time.
func _save() -> void:
	var file =FileAccess.open(save_load, FileAccess.WRITE)
	file.store_var(game_to_save.duplicate())
	file.close()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _load() -> void:
	if FileAccess.file_exists(save_load):
		var file =  FileAccess.open(save_load,FileAccess.READ)
		var data:Dictionary = file.get_var()
		for i in data: 
			if game_to_save.has(i):
				game_to_save[i] = data[i]
		file.close()
		
		var save_data= data.duplicate()
		game_to_save.progress_bar_value = data.progress_bar_value
		game_to_save.new_data_to_save = data.new_data_to_save 
	
