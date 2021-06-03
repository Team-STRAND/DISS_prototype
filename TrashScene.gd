extends Node2D

var valid_objects_clicked=0

func _ready():
	get_node("Bottle/RightSymbol").visible=false
	get_node("Branch/WrongSymbol").visible=false
	get_node("PirateHat/RightSymbol").visible=false
	
	get_node("Voices").play()
	
	get_node("Voices/Simon/VoiceSimon13").connect("finished",self,"next_scene")

func next_scene():
	get_tree().change_scene("res://SeasonsMap.tscn")

func _on_PirateHat_pressed():

	get_node("PirateHat/RightSymbol").visible=true
	get_node("PirateHat").disabled=true
	get_node("DingSound").play()
	Score.trash_score+=5
	valid_objects_clicked+=1
	get_node("Voices").stop_sounds()
	get_node("Voices/Simon/VoiceSimon11").play()
	if(valid_objects_clicked==2):
		get_node("Voices/Simon/VoiceSimon11").connect("finished",get_node("Voices/Simon/VoiceSimon13"),"play")
		
func _on_Branch_pressed():
	get_node("Branch/WrongSymbol").visible=true
	get_node("Branch").disabled=true
	get_node("WrongSound").play()
	get_node("Voices").stop_sounds()
	Score.trash_score-=5
	get_node("Voices/Simon/VoiceSimon12").play()

func _on_Bottle_pressed():
	get_node("Bottle/RightSymbol").visible=true
	get_node("Bottle").disabled=true
	get_node("DingSound").play()
	Score.trash_score+=5
	valid_objects_clicked+=1
	get_node("Voices").stop_sounds()
	get_node("Voices/Simon/VoiceSimon11").play()
	if(valid_objects_clicked==2):
		get_node("Voices/Simon/VoiceSimon11").connect("finished",get_node("Voices/Simon/VoiceSimon13"),"play")
