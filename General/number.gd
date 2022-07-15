extends Node2D

var rings = ScoreCount.rings
onready var sprite = $AnimatedSprite

func _input(event):
	if Input.is_action_just_pressed("debug"):
		ScoreCount.rings += 1
		
		if ScoreCount.rings > 999:
			ScoreCount.rings = 999
