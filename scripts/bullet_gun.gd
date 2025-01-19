extends Area2D

var direction = Vector2.RIGHT

func _process(delta):
	if Input.is_action_pressed("A"):
		$CPUParticles2D.emitting = true
	else:
		$CPUParticles2D.emitting = false
	size()
	$Timer.wait_time = Global.bullet_time_life
	translate(direction.normalized() *  Global.bulet_speed * delta)

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	print('prgetil deletado')



func _on_timer_timeout():
	queue_free()

func size():
	scale.x = Global.bullet_size_x
	scale.y = Global.bullet_size_y
