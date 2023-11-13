extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.score =0 
	$Scoreboard/Label.text = str(GlobalVariables.score)
	pass # Replace with function body.


	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_Button_pressed():
	get_tree().change_scene("res://Chapter1/C1Q2.tscn")
	GlobalVariables.score =0 
	Audio.CorrectOptionSoundPlay()
	pass # Replace with function body.


func _on_Button2_pressed():
	get_tree().change_scene("res://Chapter1/C1Q2.tscn")
	GlobalVariables.score =0
	Audio.CorrectOptionSoundPlay()
	pass # Replace with function body.


