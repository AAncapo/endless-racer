extends KinematicBody


onready var new_position: Vector3 = global_translation
var stats = preload("res://player_stats.tres")


func _process(delta):
	global_translation = lerp(global_translation, new_position, delta * stats.dodge_speed)
	
	stats.current_speed += delta


func move_to(pos):
	new_position = pos
