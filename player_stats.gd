class_name PlayerStats extends Resource

var current_speed:float setget setSpeed
var speed:float = 10
var min_speed: float = 5
var max_speed:float = 100

var dodge_speed: float = 7.0

export (Resource) var score

func setSpeed(value):
	value = clamp(value,0,max_speed)
	current_speed = value
	
	if score:
		score.current_score += int(current_speed)
