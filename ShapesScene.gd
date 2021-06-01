extends Node2D

var points=0

var parrot_didnt_talk=true

func _ready():
	get_node("UpButton").visible=false
	get_node("DownButton").visible=false
	get_node("Parrot/AnimationPlayerParrotShip").play("Entrance")
	
	get_node("Voices/Simon/SimonVoice5").connect("finished",get_node("Voices/Narator/NaratorVoice5"),"play")
	get_node("Voices/Narator/NaratorVoice5").connect("finished",get_node("Question"),"set_sound_ref",[get_node("Voices/Narator/NaratorVoice5")])

	get_node("Shapes/RightShapes/Path2DRedCircle/PathFollow2D/Button").disabled=true
	get_node("Shapes/RightShapes/Path2DCyanCircle/PathFollow2D/Button").disabled=true
	get_node("Shapes/RightShapes/Path2DYellowCircle/PathFollow2D2/Button").disabled=true
	get_node("Shapes/RightShapes/Path2DBlueCircle/PathFollow2D3/Button").disabled=true
	get_node("Shapes/WrongShapes/SquareYellow").disabled=true
	get_node("Shapes/WrongShapes/TriangleOrange").disabled=true
	get_node("Shapes/WrongShapes/SquareGreen").disabled=true

func enable_buttons():
	get_node("Shapes/RightShapes/Path2DRedCircle/PathFollow2D/Button").disabled=false
	get_node("Shapes/RightShapes/Path2DCyanCircle/PathFollow2D/Button").disabled=false
	get_node("Shapes/RightShapes/Path2DYellowCircle/PathFollow2D2/Button").disabled=false
	get_node("Shapes/RightShapes/Path2DBlueCircle/PathFollow2D3/Button").disabled=false
	get_node("Shapes/WrongShapes/SquareYellow").disabled=false
	get_node("Shapes/WrongShapes/TriangleOrange").disabled=false
	get_node("Shapes/WrongShapes/SquareGreen").disabled=false

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
