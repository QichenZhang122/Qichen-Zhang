extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	 Audio.PrettyFilmSocrePlay()
	 

func _on_Button_pressed():
	get_tree().change_scene("res://Chapter1/C1Q1.tscn")

