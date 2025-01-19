extends Area2D

@onready var bullet = preload("res://scenes/bullet_gun.tscn")

func _process(_delta):
	rotation_degrees += Global.bulet_rotation

func _on_timer_timeout():
	shot()
 
func shot():
	var BULLET = bullet.instantiate()
	BULLET.direction = $Marker2D.global_position - global_position
	BULLET.global_position = $Marker2D.global_position
	get_tree().get_root().add_child(BULLET)
