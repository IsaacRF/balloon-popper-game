extends Node3D

@export var score_text : Label
var score : int = 0

func increase_score(amount):
	score += amount
	score_text.text = str("Score: ", score)
