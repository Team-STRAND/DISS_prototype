extends Node2D

func remove_symbols():
	get_node("Giraffe/RightSymbol").visible=false
	get_node("Cat/WrongSymbol").visible=false
	get_node("Dog/WrongSymbol").visible=false
	
func _ready():
	get_node("AnimationPlayerCharacterMoving").play("Move")
	get_node("Voices").play()
	get_node("Voices/Francesca/FrancescaVoice6").connect("finished",self,"move2")
	
	
	remove_symbols()

func move2():
	get_node("AnimationPlayerCharacterMoving").play("Move2")
	remove_symbols()
	get_node("AnimationPlayerAnimals").play("Flip")
	#get_node("AnimationPlayerAnimals").play("Leave")

func _on_Giraffe_pressed():	
	get_node("Giraffe").disabled=true
	get_node("Voices/Francesca/FrancescaVoice6").play()
	get_node("PirateGirl").start_move()
	
	get_node("Giraffe/RightSymbol").visible=true
	get_node("DingSound").play()
	Score.jungle_score+=10
	get_node("Dog").disabled=true
	get_node("Cat").disabled=true
	
	get_node("Voices").stop_sounds()
	get_node("Voices/Narator/NaratorVoice17").play()

func _on_AnimationPlayerCharacterMoving_animation_finished(anim_name):
	if(anim_name=="Move2"):
		get_tree().change_scene("res://MapInTree.tscn")

func _on_Dog_pressed():
	get_node("Dog").disabled=true
	get_node("Dog/WrongSymbol").visible=true
	get_node("WrongSound").play()
	Score.jungle_score-=3
	
	get_node("Voices").stop_sounds()
	get_node("Voices/Narator/NaratorVoice18").play()

func _on_Cat_pressed():
	get_node("Cat").disabled=true
	get_node("Cat/WrongSymbol").visible=true
	get_node("WrongSound").play()
	Score.jungle_score-=3


func _on_AnimationPlayerAnimals_animation_finished(anim_name):
	if anim_name=="Flip":
		get_node("AnimationPlayerAnimals").play("Leave")
