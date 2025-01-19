extends CharacterBody2D

var hose = null
var sped = Global.enyspeed
var life = 1

func _physics_process(_delta):
	if velocity.x <0:
		$AnimatedSprite2D.flip_h =true
	elif velocity.x >0:
		$AnimatedSprite2D.flip_h =false
	if hose:
		velocity = - position.direction_to(hose.global_position) * sped 
	move_and_slide()

func die():
	velocity.x = 0
	velocity.y = 0
	Global.eny_dies()
	$enyArea/CollisionShape2D.call_deferred("queue_free")
	$AnimationPlayer.play("die")
	$AudioStreamPlayer2D.playing = true

func _on_area_2d_area_entered(area):
	if area.name == "hose":
		hose = area
	if area.name == "punch":
		die()
	if area.name == "bullet_gun":
		die()
	if area.name == "bullet_gun2":
		die()
	if area.name == "bullet_gun3":
		die()

func _on_animation_player_animation_finished(_anim_name):
	queue_free()
