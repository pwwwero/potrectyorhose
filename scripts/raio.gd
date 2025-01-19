extends Area2D

func _ready():
	$Timer.start()

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Global.raio_time = Global.raio_time + 2
	print($Timer.wait_time)
	$Timer.wait_time = Global.raio_time


func _on_timer_timeout():
	queue_free()
