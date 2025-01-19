extends Node2D


func _process(_delta):
	if Global.wave_num == 5:
		if Global.is_noite == 0:
			$AnimationPlayer.play("noite")
	elif Global.wave_num == 10:
		if Global.is_noite == 1:
			$AnimationPlayer.play("dia")


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "noite":
		Global.is_noite += 1
	if anim_name == "dia": 
		Global.is_noite -= 1
