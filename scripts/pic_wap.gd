extends Node2D




func _ready():
	get_tree().paused = true
	

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().paused = false
		Global._reset_waves()
		queue_free()
