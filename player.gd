extends CharacterBody2D

class_name Player

const SPEED = 300.0

func _ready():
	add_to_group("Player")

func _physics_process(delta):
	# As good practice, you should replace UI actions with custom gameplay actions
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -SPEED
	elif Input.is_action_just_pressed("ui_down"):
		velocity.y = SPEED
	elif Input.is_action_just_pressed("ui_left"):
		velocity.x = -SPEED
	elif Input.is_action_just_pressed("ui_right"):
		velocity.x = SPEED
	elif Input.is_action_just_released("ui_up") or Input.is_action_just_released("ui_down"):
		velocity.y = 0
	elif Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right"):
		velocity.x = 0
	move_and_slide()
