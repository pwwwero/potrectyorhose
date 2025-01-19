extends Node2D

var raio = preload("res://scenes/raio.tscn")

func _on_timer_timeout():
	var RAIO = raio.instantiate()
	RAIO.position = Vector2(randi_range(10,700), randi_range(10, 500))
	add_child(RAIO)
