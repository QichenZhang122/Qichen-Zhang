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
	get_tree().change_scene("res://Chapter1/C1Q3.tscn")
	GlobalVariables.score =- 100
	Audio.ErroSoundPlay()
	pass # Replace with function body.


func _on_Button2_pressed():
	GlobalVariables.score =+ 100 
	get_tree().change_scene("res://Chapter1/C1Q3.tscn")
	Audio.CorrectOptionSoundPlay()
	pass # Replace with function body.

