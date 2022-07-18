extends Node2D

onready var box_texture = $Area2D/AnimatedSprite
onready var icon_texture = $"Area2D/Icons-sheet"
onready var box_guy = $Spind
var is_destroyed = false
export var icon = 0
var rings = ScoreCount.rings

func _ready():
	icon_texture.set_frame(icon)
	

func _on_Area2D_body_entered(body):
	if !is_destroyed:
		if body is PlayerPhysics and (body.is_rolling or (!body.is_grounded and body.velocity.y >= 0)):
			is_destroyed = true
			match icon:
				0:
					ScoreCount.rings += 10
				1:
					ScoreCount.rings += 1
				2:
					ScoreCount.lives += 1
				3:
					ScoreCount.score += 2000
			body.velocity.y -= 400
			box_texture.position.y += 10
			box_guy.queue_free()
			remove_child(box_guy)
			icon_texture.set_frame((17))
			box_texture.set_frame((1))
			
func _on_Spind_body_entered(body):
	pass
