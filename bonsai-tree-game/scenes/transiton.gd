extends Control
signal on_trasition_finshied

@onready var animation = $AnimationPlayer
@onready var explosion = $AnimationPlayer/ColorRect
# Called when the node enters the scene tree for the first time.
func _ready():
	explosion.visible = false 
	animation.animation_finished.connect(on_animation_finsihed)


func  on_animation_finsihed(ani_name):
	if ani_name == "explosion_start":
		on_trasition_finshied.emit()
		animation.play("explosion_end")
	elif ani_name == "explosion_end":
		explosion.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func fade_in() ->void:
	explosion.visible = true 
	animation.play("explosion_start")
	
