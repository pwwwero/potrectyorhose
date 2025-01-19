extends Button

func _ready():
	hide()
	Global.delete_others.connect(delete)

func delete():
	queue_free()

func _on_pressed():
	Global.have_gun = true
	Global.spawn_gun.emit()
	Global.out_anim.emit()
	$AudioStreamPlayer2D2.playing = true



func _on_timer_timeout():
	show()

func _on_mouse_entered():
	$AudioStreamPlayer2D.playing = true
	scale.x =1.05
	scale.y =1.05

func _on_mouse_exited():
	scale.x =1
	scale.y =1



func _on_audio_stream_player_2d_2_finished():
	Global.delete_others.emit()
