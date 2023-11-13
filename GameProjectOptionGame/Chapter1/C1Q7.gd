extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Scoreboard/Label.text = str(GlobalVariables.score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	GlobalVariables.score += 50
	get_tree().change_scene("res://Chapter2/C2Q1.tscn")
	Audio.CorrectOptionSoundPlay()
	pass # Replace with function body.



func _on_Button2_pressed():
	GlobalVariables.score += 0
	get_tree().change_scene("res://Chapter2/C2Q1.tscn")
	Audio.ErroSoundPlay()
	pass # Replace with function body.
