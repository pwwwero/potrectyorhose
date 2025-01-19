extends CanvasLayer



func _process(_delta):
	$Control/TextureProgressBar.value = Global.eny_ded
	$Control/TextureProgressBar.min_value = 0 
	$Control/TextureProgressBar.max_value = Global.eny_wave_value - 1
	
	$Control/Label.text = str(":", Global.player_life)
	$Control/Label2.text = str(":", Global.hose_life)
	$Control/Label3.text = str(":", Global.global_deads)
	if Global.have_gun == true:
		$Control/Gun.show()
