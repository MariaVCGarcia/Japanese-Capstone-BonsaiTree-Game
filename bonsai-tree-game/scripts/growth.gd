extends ProgressBar

'
	things i need in order to get the growth bar to work:
		curent value of progress bar 
		max value of progress bar 
		min value of progrses bar 
		time passed
		
'
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_trim_pressed() -> void:
	value -=10
#function to chage value of progress bar if it is at 50


func _on_timer_timeout() -> void:
	value +=10
