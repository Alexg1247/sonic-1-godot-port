extends Node

var levelToLoad = preload("res://Levels/GHZ.tscn").instance()
onready var theNumbers:Array = [
	$CanvasLayer/Num1/AnimatedSprite,
	$CanvasLayer/Num2/AnimatedSprite,
	$CanvasLayer/Num3/AnimatedSprite,
]

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	add_child(levelToLoad)

func _process(delta):
	if Input.is_action_just_pressed("ui_full_screen"):
		OS.window_fullscreen = !OS.window_fullscreen
		
	var ringString:String = str(ScoreCount.rings)
	if len(ringString) == 1:
		ringString = "00"+ringString
		
	if len(ringString) == 2:
		ringString = "0"+ringString
		
	theNumbers[0].set_frame(int(ringString[0]))
	theNumbers[1].set_frame(int(ringString[1]))
	theNumbers[2].set_frame(int(ringString[2]))
	
	if Input.is_action_just_pressed("debug"):
		ScoreCount.rings = 999
		
	if ScoreCount.rings > 999:
		ScoreCount.rings = 999
