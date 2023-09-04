extends Spatial

onready var lanes := $lanes.get_children()
onready var player := $player
var current_lane:int
var initial_lane:int = 1
var desired_lane:int
var lane_pos: Vector3


func _ready():
	current_lane = initial_lane


func _process(delta):
	if Input.is_action_just_pressed("left"):
		current_lane += 1
		if current_lane >= lanes.size():
			current_lane = lanes.size()-1
	if Input.is_action_just_pressed("right"):
		current_lane -= 1
		if current_lane < 0:
			current_lane = 0
	
	player.move_to(get_position(current_lane))


func get_position(lane_index) -> Vector3:
	return lanes[lane_index].global_translation
