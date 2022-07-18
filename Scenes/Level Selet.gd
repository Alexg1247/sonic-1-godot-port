extends Node2D
var level = ScoreCount.level

func _on_Button_pressed():
	level = 0
	get_tree().change_scene("res://main.tscn")


func _on_Button2_pressed():
	level = 1
	get_tree().change_scene("res://main.tscn")
