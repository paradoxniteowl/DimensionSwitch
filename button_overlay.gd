extends CanvasLayer

@onready var current_scene = get_tree().current_scene
@onready var normalwld = $normal_world
@onready var normalwld_player = $normal_world/TileMap/player
@onready var blklitewld = $blacklight_world
@onready var blklitewld_player = $blacklight_world/TileMap/player

func _ready():
	print(current_scene)

func _on_blacklight_button_pressed():
	if current_scene == normalwld:
		get_tree().change_scene_to_file("res://blacklight_world.tscn")
		BlacklightWorld.player.position = NormalWorld.player.position
	else:
		get_tree().change_scene_to_file("res://normal_world.tscn")
		normalwld_player.global_position = blklitewld_player.global_position
