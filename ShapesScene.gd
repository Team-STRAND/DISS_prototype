extends Node2D

var points=0

var parrot_didnt_talk=true

func _ready():
	get_node("UpButton").visible=false
	get_node("DownButton").visible=false
	get_node("Parrot/AnimationPlayerParrotShip").play("Entrance")
	
	get_node("Voices/Simon/SimonVoice5").connect("finished",get_node("Voices/Narator/NaratorVoice5"),"play")
	get_node("Voices/Narator/NaratorVoice5").connect("finished",get_node("Question"),"set_sound_ref",[get_node("Voices/Narator/NaratorVoice5")])
	

func _process(delta):
	if(points>=4):
		get_node("UpButton").visible=true
		get_node("DownButton").visible=true
		get_node("Shapes/WrongShapes/SquareGreen").disabled=true
		get_node("Shapes/WrongShapes/SquareYellow").disabled=true
		get_node("Shapes/WrongShapes/TriangleOrange").disabled=true
		
		if parrot_didnt_talk:
			parrot_didnt_talk=false
			get_node("Parrot").start_move()
			get_node("Voices/Simon/SimonVoice5").play()

func add_point():
	points=points+1
