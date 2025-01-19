extends CharacterBody2D

var target = null
var sped = 30
var life = 1

func _physics_process(_delta):
	if velocity.x <0:
		$AnimatedSprite2D.flip_h =true
	elif velocity.x >0:
		$AnimatedSprite2D.flip_h =false
	if target:
		velocity = position.direction_to(target.global_position) * sped
	move_and_slide()


func _on_area_2d_area_entered(area):
	if area.name == "playerArea":
		target = area

func _on_spider_hit_area_area_entered(area):
	if area.name == "punch":
		$AudioStreamPlayer2D.playing = true
		Global.eny_dies()

	if area.name == "bullet_gun":
		$AudioStreamPlayer2D.playing = true
		Global.eny_dies()

func die():
	velocity.x = 0
	velocity.y = 0
	$spiderArea2D/CollisionShape2D.call_deferred("queue_free")
	queue_free()
	

func _on_audio_stream_player_2d_finished():
	die()
