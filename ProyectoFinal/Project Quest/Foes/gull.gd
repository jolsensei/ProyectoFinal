extends "res://Engine/common_entity.gd"

var movetimer_length = 15
var movetimer = 0

var speed = 10
var damage = 1
var hitstun = 10

func _init():
	global_speed = speed
	global_hitstun = hitstun

func _ready():
	dirMov = _DIRECTIONS.random()
	
	
func _physics_process(delta):
	movement_loop()
	damage_loop()
	
	if movetimer > 0:
		movetimer -= 1
	if movetimer == 0 or is_on_wall():
		dirMov = _DIRECTIONS.random() 
		movetimer = movetimer_length
		
	sprite_mov_loop()
	if dirMov != Vector2(0,0):
		animation_switch("walk_")
	else:
		animation_switch("idle_")
	