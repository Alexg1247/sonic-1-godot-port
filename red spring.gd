extends Node2D
var is_toggled:bool = false

func _on_Area2D_body_entered(body):
	if body is PlayerPhysics:
		is_toggled = true
		body.is_rolling = false
		body.get_node("Characters/Sonic/AnimationPlayer").play("Bounce")
		body.velocity.y -= 750


