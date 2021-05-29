extends Node

var child_name="TEST SUBJECT"
var total_score=0
var boat_score=0
var island_top_score=0
var river_score=0
var jungle_score=0
var cave_entrace_score=0
var season_score=0

func _ready():
	pass # Replace with function body.

func write_to_file():

	var year=str(OS.get_date()["year"])
	var month=str(OS.get_date()["month"])
	var day=str(OS.get_date()["day"])
	var file_name="res://Rezultat-"+day+"-"+month+"-"+year+".txt"
	
	var file = File.new()
	file.open(file_name, file.READ_WRITE)
	if !file.is_open():
		file.open(file_name, file.WRITE)
		
	total_score=boat_score+island_top_score+river_score+cave_entrace_score+season_score+jungle_score
	
	file.seek_end()
	var text="\n"+child_name
	text+=" "+str(boat_score)
	text+=" "+str(island_top_score)
	text+=" "+str(river_score)
	text+=" "+str(jungle_score)
	text+=" "+str(season_score)
	text+=" "+str(cave_entrace_score)
	text+=" "+str(total_score)
	
	file.store_string(text)
	file.close()
