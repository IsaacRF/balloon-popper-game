extends Area3D

var clicks_to_pop : int = 3
var clicks : int = 0
var size_increase : float = 0.2
var score_value : int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	scale += Vector3.ONE * (size_increase * clicks_to_pop)

func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale -= Vector3.ONE * size_increase
		clicks += 1
		
		if clicks == clicks_to_pop:
			queue_free()
