class_name Score extends Resource
# the score calculator is based on the player car current speed

var current_score:int = 0 setget setScore
var hiscore:int


func setScore(value):
	current_score = value
	if current_score > hiscore:
		hiscore = current_score
