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



func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		print("You can't get through the door! There must be some way to move it...")
