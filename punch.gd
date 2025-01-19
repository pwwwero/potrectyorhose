extends Area2D

var rotation_dir = [-230, -136, 50, -50]
var randomx_dir = [1,-1]
@onready var colision = get_node("CollisionShape2D")


func _process(_delta):
	$Timer2.wait_time = Global.punch_timer
	$AnimatedSprite2D.speed_scale = Global.punch_speed_anim
	$AnimatedSprite2D.scale.x = Global.punch_size_x
	$AnimatedSprite2D.scale.y = Global.punch_size_y
	
	$CollisionShape2D.scale.x = Global.punch_size_x
	$CollisionShape2D.scale.y = Global.punch_size_y

func _input(_event):
	if Input.is_action_just_pressed("A"):
		scale.x = -1
	elif Input.is_action_just_pressed("D"):
		scale.x = 1

func picradomdir():
	pass
#	randomize()
#	var DIR = rotation_dir[randi()% rotation_dir.size()]
#	rotation_degrees = DIR
#	var xdir = randomx_dir[randi()% randomx_dir.size()]
#	scale.x = xdir
#	if scale.x == -1:
#		$AnimatedSprite2D.flip_v = true
#	elif scale.x == 1:
#		$AnimatedSprite2D.flip_v = false

func _on_timer_2_timeout():
	if colision.disabled == true:
		colision.disabled = false
		$AnimatedSprite2D.play("default")

	elif colision.disabled == false:
		colision.disabled = true
