extends Node2D



func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://scenes/garden.tscn")



func _on_button_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
