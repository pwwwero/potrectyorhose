extends Control

func _process(_delta):
	hideshow()
	$CanvasLayer/VBoxContainer/Label.text = str("pato_life: ", Global.player_life)
	$CanvasLayer/VBoxContainer/Label2.text = str("pato_speed: ", Global.player_speed)
	$CanvasLayer/VBoxContainer/Label3.text = str("punch_speed_value: ", Global.punch_speed_anim)
	$CanvasLayer/VBoxContainer/Label4.text = str("punch_spawn_timer: ", Global.punch_timer)
	$CanvasLayer/VBoxContainer/Label5.text = str("bullet_speed: ", Global.bulet_speed)
	$CanvasLayer/VBoxContainer/Label6.text = str("bullet_rotation", Global.bulet_rotation)
	$CanvasLayer/VBoxContainer/Label7.text = str("bullet_time_life: ", Global.bullet_time_life)
	$CanvasLayer/VBoxContainer/Label8.text =  str("target_value: ", Global.eny_wave_value)
	$CanvasLayer/VBoxContainer/Label9.text = str("wave_num: ", Global.wave_num)
	$CanvasLayer/VBoxContainer/Label10.text = str("ta de noite?: ", Global.is_noite)
	$CanvasLayer/VBoxContainer/Label11
	$CanvasLayer/VBoxContainer/Label12.text = str("house_life: ", Global.hose_life)
	$CanvasLayer/VBoxContainer/Label13
	



func hideshow():
	if Input.is_action_just_pressed("hide_show"):
		if $CanvasLayer.visible == true:
			$CanvasLayer.hide()
		else:
			if $CanvasLayer.visible == false:
				$CanvasLayer.show()
