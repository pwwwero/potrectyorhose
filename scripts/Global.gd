extends Node

signal out_anim
signal delete_others

signal spawn_gun
signal spawn_raio

var gun = preload("res://scenes/gun.tscn")
var raio = preload("res://scenes/raios_spawn.tscn")

var punch_timer = 0.5
var punch_speed_anim = 1
var bulet_speed = 50
var bulet_rotation = 1
var bullet_time_life = 5
var bullet_two = false
var global_deads = 0
var player_speed = 50
var player_life = 10
var hose_life = 10
var spawntime = 3
var enyspeed = -10
var eny_ded = 0
var eny_wave_value = 1
var wave_num = 0
var is_noite = 0
var raio_time := 2.0


var punch_size_x = 1
var punch_size_y = 1

var bullet_size_x = 1
var bullet_size_y = 1

var have_gun = false
var have_raio = false


var gameoverScene = preload("res://scenes/gameover.tscn")

func _process(_delta):
	set_spawn_time()

func game_over():
	get_tree().paused = true
	var GAMEOVER = gameoverScene.instantiate()
	get_parent().add_child(GAMEOVER)

func eny_dies():
	global_deads +=1
	eny_ded += 1

func wave_counter():
	wave_num += 1
	eny_wave_value += 3

func _reset_waves():
	eny_ded = 0

func dame_hose():
	hose_life -=1
	if hose_life <=0:
		game_over()

func damage_player():
	player_life -=1
	if player_life <=0:
		game_over()

func set_spawn_time():

	if wave_num ==1:
		spawntime = 2

	if wave_num ==2:
		spawntime = 1

	if wave_num ==3:
		spawntime = 1.3

	if wave_num >=5:
		if wave_num <=10:
			spawntime = 1.5

	if wave_num ==10:
		if wave_num <=15:
			spawntime = 1


func add_player_speed():
	player_speed += 10
