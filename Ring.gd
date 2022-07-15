extends Node2D

var rings = ScoreCount.rings

func _on_Ring_body_entered(area):
	if area is PlayerPhysics:
		ScoreCount.rings += 1
		
		if ScoreCount.rings > 999:
			ScoreCount.rings = 999
		
		queue_free()
