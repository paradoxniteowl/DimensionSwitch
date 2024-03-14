extends Node2D

@onready var player_position = $TileMap/player
const TILE_TEXTURES = ["res://normal_set.tres", "res://blacklight_set.tres"]
var tile = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_change_light_pressed():
	tile = (tile + 1)%2
	var texture = load(TILE_TEXTURES[tile])
	$TileMap.tile_set.get_source(1).texture = texture
