extends Node2D

#@onready var tilemap = get_node("normal_map")

const TEXTURES = ["res://normal_set.tres", "res://blacklight_set.tres"]

var map = 0

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		if map > 0:
			map += 1
		else:
			map -= 1
		var texture = load(TEXTURES[map])
		%normal_map.tile_set.set_tileset(texture)

