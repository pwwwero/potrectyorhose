extends Node2D


var lvlup = preload("res://scenes/level_up.tscn")

var eny1 = preload("res://scenes/eny_1.tscn")
var eny2 = preload("res://scenes/spider.tscn")


func _process(_delta):
	$Timer.wait_time = Global.spawntime
	if Global.eny_ded >= Global.eny_wave_value:
		var  lp = lvlup.instantiate()
		add_child(lp)
		Global.wave_counter()

func _on_timer_timeout():
	if Global.wave_num <=5:
		randomize()
		var enys = [eny1]
		var tipes = enys[randi()% enys.size()]
		var eny = tipes.instantiate()
		eny.position = Vector2(randi_range(10,700), randi_range(10, 500))
		add_child(eny)

	if Global.wave_num >=5:
		if Global.wave_num <10:
			var enys = [eny1,eny2]
			var tipes = enys[randi()% enys.size()]
			var eny = tipes.instantiate()
			eny.position = Vector2(randi_range(10,700), randi_range(10, 500))
			add_child(eny)
