extends Node2D

var life = Global.hose_life

func _process(_delta):
	if Global.hose_life >=10:
		$AnimatedSprite2D.play("1")
	if Global.hose_life <10:
		if Global.hose_life>5:
			$AnimatedSprite2D.play("2")
	if Global.hose_life <5:
		$AnimatedSprite2D.play("3")

func _on_hitbox_area_entered(area):
	if area.name == "enyArea":
		Global.dame_hose()
	if area.name == "spider_hit_Area":
		Global.dame_hose()
	
