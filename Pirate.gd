extends TextureButton

var move=false
var character_move_offset= Vector2(0.0,6.0)
var i=0;


func _ready():
	pass # Replace with function body.

func start_move():
	move=true
	
func stop_move():
	move=false
	
func move_character(delta):
	if(i%5==0):
		character_move_offset.y=sin(i)*35
	i=i+1
	#print(character_move_offset)
	set_position(get_position() + character_move_offset*delta)

func _process(delta):
	if(move):
		move_character(delta)
	
