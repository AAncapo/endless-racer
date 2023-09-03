extends KinematicBody


onready var new_position: Vector3 = global_translation
var dodge_speed: float = 5.0


func move_to(pos):
	new_position = pos


func _process(delta):
	global_translation = lerp(global_translation, new_position, delta * dodge_speed)
