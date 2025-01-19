extends CPUParticles2D
func _process(delta):
	if Input.is_action_pressed("A"):
		emitting = true
	else:
		emitting = false
