extends CharacterBody2D

class_name Player

const SPEED = 300.0

@onready var sprite = $Sprite2D
var frontTexture = load("res://frontcharacter.png")
var leftTexture = load("res://leftcharacter.png")
var rightTexture = load("res://rightcharacter.png")
var backTexture = load("res://backcharacter.png")

func _ready():
	add_to_group("Player")

func _physics_process(delta):
	# As good practice, you should replace UI actions with custom gameplay actions
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -SPEED
		sprite.set_texture(backTexture)
	elif Input.is_action_just_pressed("ui_down"):
		velocity.y = SPEED
		sprite.set_texture(frontTexture)
	elif Input.is_action_just_pressed("ui_left"):
		velocity.x = -SPEED
		sprite.set_texture(leftTexture)
	elif Input.is_action_just_pressed("ui_right"):
		velocity.x = SPEED
		sprite.set_texture(rightTexture)
	elif Input.is_action_just_released("ui_up") or Input.is_action_just_released("ui_down"):
		velocity.y = 0
	elif Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right"):
		velocity.x = 0
	move_and_slide()


func _on_finishlvl_1_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://win.tscn")


