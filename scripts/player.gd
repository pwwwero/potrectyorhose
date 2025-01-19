extends CharacterBody2D


func _ready():
	Global.spawn_raio.connect(add_raio)
	Global.spawn_gun.connect(add_gun)

func _physics_process(_delta):

	animation()
	move()
	move_and_slide()

func move():
######################(WASD)##############################
	if Input.is_action_pressed("A"):
		velocity.x = -Global.player_speed
		$AnimatedSprite2D.flip_h = true
	elif Input.is_action_pressed("D"):
		velocity.x = Global.player_speed
		$AnimatedSprite2D.flip_h = false
	else:
		velocity.x = 0
	if Input.is_action_pressed("W"):
		velocity.y = -Global.player_speed
	elif Input.is_action_pressed("S"):
		velocity.y = Global.player_speed
	else:
		velocity.y =0


func animation():
	if velocity:
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.stop()

func _on_player_area_area_entered(area):
	if area.name == "enyArea":
		Global.damage_player()
	elif area.name == "spider_hit_Area":
		Global.damage_player()

func add_gun():
	var gun = Global.gun
	var GUN = gun.instantiate()
	add_child(GUN)
	GUN.global_position = global_position
	print("eu sou uma arma")

func add_raio():
	var raio = Global.raio
	var RAIO = raio.instantiate()
	add_child(RAIO)
