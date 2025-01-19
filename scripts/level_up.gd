extends Node2D

@export var delete = false

var up1 = preload("res://scenes/buttons/+p_speed.tscn")
var up2 = preload("res://scenes/buttons/+p_life.tscn")
var up3 = preload("res://scenes/buttons/+size_punch.tscn")
var up4 = preload("res://scenes/buttons/+hose_life.tscn")
var up5 = preload("res://scenes/buttons/+gun_bulet_speed.tscn")
var up6 = preload("res://scenes/buttons/+vel_ataque.tscn")
var up7 = preload("res://scenes/buttons/+bullet_time.tscn")
var up8 = preload("res://scenes/buttons/+bullet_to_the_gun.tscn")
var up9 = preload("res://scenes/buttons/+bullet_size.tscn")

var wep_new1 = preload("res://scenes/buttons/+new_atq_gun.tscn")
var wep_new2 = preload("res://scenes/buttons/+new_raio.tscn")

func _ready():
	Global.out_anim.connect(play_animation)
	pic()
	get_tree().paused = true

func pic():
	randomize()
	if Global.have_gun == false:
		var upgrades = [up1,up2,up3,up4,up6,wep_new1]
		var tipes = upgrades[randi()% upgrades.size()]
		var UPGRADE_FINAL = tipes.instantiate()
		UPGRADE_FINAL.global_position = $CanvasLayer/Marker2D.global_position
		get_node("CanvasLayer").add_child(UPGRADE_FINAL)

		var upgrades_2 = [up1,up2,up3,up4,up6,wep_new1]
		var tipes_2 = upgrades_2[randi()% upgrades_2.size()]
		var UPGRADE_FINAL_2 = tipes_2.instantiate()
		UPGRADE_FINAL_2.global_position = $CanvasLayer/Marker2D2.global_position
		get_node("CanvasLayer").add_child(UPGRADE_FINAL_2)

		var upgrades_3 = [up1,up2,up3,up4,up6,wep_new1]
		var tipes_3 = upgrades_3[randi()% upgrades_3.size()]
		var UPGRADE_FINAL_3 = tipes_3.instantiate()
		UPGRADE_FINAL_3.global_position = $CanvasLayer/Marker2D3.global_position
		get_node("CanvasLayer").add_child(UPGRADE_FINAL_3)
		
	elif Global.have_gun == true:
		var upgrades = [up1,up2,up3,up4,up5,up6,up7,up8,up9,wep_new2]
		var tipes = upgrades[randi()% upgrades.size()]
		var UPGRADE_FINAL = tipes.instantiate()
		UPGRADE_FINAL.global_position = $CanvasLayer/Marker2D.global_position
		get_node("CanvasLayer").add_child(UPGRADE_FINAL)

		var upgrades_2 = [up1,up2,up3,up4,up5,up6,up7,up8,up9,wep_new2]
		var tipes_2 = upgrades_2[randi()% upgrades_2.size()]
		var UPGRADE_FINAL_2 = tipes_2.instantiate()
		UPGRADE_FINAL_2.global_position = $CanvasLayer/Marker2D2.global_position
		get_node("CanvasLayer").add_child(UPGRADE_FINAL_2)

		var upgrades_3 = [up1,up2,up3,up4,up5,up6,up7,up8,up9,wep_new2]
		var tipes_3 = upgrades_3[randi()% upgrades_3.size()]
		var UPGRADE_FINAL_3 = tipes_3.instantiate()
		UPGRADE_FINAL_3.global_position = $CanvasLayer/Marker2D3.global_position
		get_node("CanvasLayer").add_child(UPGRADE_FINAL_3)




func play_animation():
	get_tree().paused = false
	Global._reset_waves()
	$CanvasLayer/AnimationPlayer.play("out")

func _process(_delta):
	if delete == true:
		queue_free()

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "out":
		delete=true
