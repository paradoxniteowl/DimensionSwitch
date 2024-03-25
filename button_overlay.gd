extends CanvasLayer

'''
@onready var current_scene = get_tree().current_scene
@onready var normalwld = preload("res://normal_world.tscn")
@onready var normalwld_player = $normal_world/TileMap/player
@onready var blklitewld = $blacklight_world
@onready var blklitewld_player = $blacklight_world/TileMap/player
'''
func _ready():
	print(normalwld)


func _on_blacklight_button_pressed():
	

#	if current_scene == normalwld:
#		print("switched")
#		get_tree().change_scene_to_file("res://blacklight_world.tscn")
#		#blklitewld_player.global_position = normalwld_player.global_position
#	else:
#		print("unswitched")
#		get_tree().change_scene_to_file("res://normal_world.tscn")
		#normalwld_player.global_position = blklitewld_player.global_position
