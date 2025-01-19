extends Button

func _ready():
	hide()
	Global.delete_others.connect(delete)


func delete():
	queue_free()


func _on_pressed():
	Global.have_raio = true
	$AudioStreamPlayer2D2.playing = true
	Global.spawn_raio.emit()
	Global.out_anim.emit()



func _on_mouse_entered():
	scale.x = 1.1
	scale.y =1.1


func _on_mouse_exited():
	scale.x = 1
	scale.y =1



func _on_audio_stream_player_2d_2_finished():
	Global.delete_others.emit()


func _on_timer_timeout():
	show()
