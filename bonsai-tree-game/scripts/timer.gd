extends CanvasLayer
@onready var label = $Label
@onready var timer = $Timer


func _ready():
	timer.start(180)

func _time_left_to_end():
	var time_left = timer.time_left
	var muinte = floor(time_left/60)
	var seconds = int(time_left) % 60
	return [muinte,seconds]
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = "%02d:%02d" % _time_left_to_end()
