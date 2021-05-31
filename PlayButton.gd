extends TextureButton

onready var parent=get_parent()

func _ready():
	parent.get_node("WaveSound").connect("finished",parent.get_node("WaveSound"),"play")
	pass 

func _on_PlayButton_pressed():
	get_node("AnimationPlayer").play("FadeButton");
	#parent.get_node("Title/AnimationPlayer").play("TitleFade")
	Score.child_name=parent.get_node("TextEdit").text
	get_parent().play_pressed()
	

func _on_AnimationPlayer_animation_finished(anim_name):
	pass
	#parent.get_node("Path2D/PathFollow2D/Ship").start()

