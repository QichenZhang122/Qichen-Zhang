extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var percentage = GlobalVariables.score / 1250.0 


# Called when the node enters the scene tree for the first time.
func _ready():
	$Scoreboard/Label.text = str(GlobalVariables.score)
	$PanelContainer/MarginContainer/VBoxContainer/DialogueBox/MarginContainer/Line1.modulate.a = 0
	$PanelContainer/MarginContainer/VBoxContainer/DialogueBox/MarginContainer/Line2.modulate.a = 0
	$PanelContainer/MarginContainer/VBoxContainer/DialogueBox/MarginContainer/Line3.modulate.a = 0
	$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.modulate.a = 0
	$PanelContainer/Ending1.modulate.a = 0
	$PanelContainer/Ending2.modulate.a = 0
	$PanelContainer/Ending3.modulate.a = 0
	pass # Replace with function body.
	$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if percentage >= 0.75:
		Audio.ApplausePlay()
		Audio.VictoryPlay()
		$PanelContainer/Ending3.modulate.a = 1
		$PanelContainer/MarginContainer/VBoxContainer/DialogueBox/MarginContainer/Line1.modulate.a = 1
		$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.modulate.a = 1
		$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.visible = true
		print(percentage)
	elif percentage < 0.75 && percentage >= 0.5:
		Audio.ApplausePlay()
		Audio.VictoryPlay()
		$PanelContainer/Ending2.modulate.a = 1
		$PanelContainer/MarginContainer/VBoxContainer/DialogueBox/MarginContainer/Line2.modulate.a = 1
		$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.modulate.a = 1
		$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.visible = true
		print(percentage)
	elif percentage < 0.5:
		Audio.Gameover2Play()
		$PanelContainer/Ending1.modulate.a = 1
		$PanelContainer/MarginContainer/VBoxContainer/DialogueBox/MarginContainer/Line3.modulate.a = 1
		$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.modulate.a = 1
		$PanelContainer/MarginContainer/DecisionBox/MarginContainer/VBoxContainer/Button2.visible = true
		print(percentage)
	
	pass # Replace with function body.


func _on_Button2_pressed():
	get_tree().change_scene("res://MainScreens/Final.tscn")
	GlobalVariables.score == 0 #Set the score back to 0
	pass # Replace with function body.
