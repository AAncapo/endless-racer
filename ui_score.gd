extends Control

var player_stats = preload("res://player_stats.tres")
onready var curScore = $"%current_score"
onready var curSpeed = $"%current_speed"


func _process(delta):
	update_score(player_stats.score.current_score)
	update_speed(player_stats.current_speed)


func update_score(new_score):
	curScore.text = str(new_score)

func update_speed(new_speed):
	curSpeed.text = str(int(new_speed))
