extends Button


func _ready():
	hide()
	Global.delete_others.connect(delete)

func _on_timer_timeout():
	show()
 
func delete():
	queue_free()


func _on_pressed():
	Global.out_anim.emit()
	$AudioStreamPlayer2D2.playing = true
	


func _on_mouse_entered():
	$AudioStreamPlayer2D.playing = true
	scale.x = 1.1
	scale.y = 1.1


func _on_audio_stream_player_2d_2_finished():
	Global.punch_timer -= 0.1
	Global.punch_speed_anim += 0.1
	Global.delete_others.emit()


func _on_mouse_exited():
	scale.x = 1
	scale.y = 1
