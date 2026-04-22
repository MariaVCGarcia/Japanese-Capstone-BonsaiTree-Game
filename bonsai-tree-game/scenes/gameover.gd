extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await SceneTransition.on_trasition_finshied
	SceneTransition.on_animation_finsihed("explosion_end")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
