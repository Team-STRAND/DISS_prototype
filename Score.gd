extends Node

var child_name="TEST SUBJECT"
var total_score=0
var river_score=0
var cave_entrace_score=0
var season_score=0
var boat_score=0

func _ready():
	pass # Replace with function body.

func write_to_file():

	var year=str(OS.get_date()["year"])
	var month=str(OS.get_date()["month"])
	var day=str(OS.get_date()["day"])
	var file_name="res://Rezultat-"+day+"-"+month+"-"+year+".txt"
	
	var file = File.new()
	file.open(file_name, file.READ_WRITE)
	assert(file.is_open())
	
	file.seek_end()
	var text=child_name+" "+str(total_score)
	
	
	file.store_string(text)
	file.close()
