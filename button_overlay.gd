extends CanvasLayer

var current_scene = get_tree().current_scene

func _on_blacklight_button_pressed():
	if current_scene == "res://normal_world.tscn":
		get_tree().change_scene_to_file("res://blacklight_world.tscn")
	else:
		get_tree().change_scene_to_file("res://normal_world.tscn")
	
