extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func PrettyFilmSocrePlay():
	$PrettyFilmScore.play() 
	
func CorrectOptionSoundPlay():
	$CorrectOptionSound.play()

	
func ApplausePlay()	:
	$Applause.play()

	
func GamoverPlay():
	$Gamover.play()

	
func Gameover2Play():
	$Gameover2.play()

	
func VictoryPlay():
	$Victory.play()

func ErroSoundPlay():
	$ErrorSound.play()
	
func PrettyFilmSocrestop():
	$PrettyFilmScore.stop()
	
func CorrectOptionSound():
	$CorrectOptionSound.stop()
	
func Applausestop():
	$Applause.stop()
	
func Gamoverstop():
	$Gamover.stop()
	
func Gameover2stop():
	$Gameover2.stop()
	
func Victorystop():
	$Victory.stop()
	
func ErroSoundstop():
	$ErrorSound.stop()
	
