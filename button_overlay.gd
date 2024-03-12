extends CanvasLayer

@onready var current_scene = get_tree().get_current_scene
@onready var normalwld = load("res://normal_world.tscn")
@onready var blklitewld = load("res://blacklight_world.tscn")

func _on_blacklight_button_pressed():
	if current_scene == load("res://normal_world.tscn"):
		get_tree().change_scene_to_file("res://blacklight_world.tscn")
		BlacklightWorld.player.position = NormalWorld.player.position
	else:
		get_tree().change_scene_to_file("res://normal_world.tscn")
		NormalWorld.player.position = BlacklightWorld.player.position
