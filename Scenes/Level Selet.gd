extends Node2D
var level = ScoreCount.level

func _on_Button_pressed():
	level = 0
	Global.loadedLevel = load("res://Levels/GHZ.tscn").instance()
	get_tree().change_scene("res://main.tscn")

func _on_Button2_pressed():
	level = 1
	Global.loadedLevel = load("res://Levels/a!.tscn").instance()
	get_tree().change_scene("res://main.tscn")
