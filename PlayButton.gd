extends Button

onready var parent=get_parent()

func _ready():
	parent.get_node("WaveSound").connect("finished",parent.get_node("WaveSound"),"play")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayButton_pressed():
	get_node("TextureRect/AnimationPlayer").play("FadeButton");
	parent.get_node("Title/AnimationPlayer").play("TitleFade")
	Score.child_name=parent.get_node("TextEdit").text
	

func _on_AnimationPlayer_animation_finished(anim_name):
	
	parent.get_node("WaveSound").play()
	#parent.get_node("Path2D/PathFollow2D/Ship").start()


	parent.remove_child(self)
