extends Node2D

func _ready():
	$Animation.connect("animation_finished", self, "destroy")
	$Animation.play(str("sword_", get_parent().spriteMov))
	if get_parent().has_method("state_attack"):
		get_parent().current_state = _ENUMS.STATE.ATTACK
func destroy(animation):
	if get_parent().has_method("state_default"):
		get_parent().current_state = _ENUMS.STATE.DEFAULT
	queue_free()
	
