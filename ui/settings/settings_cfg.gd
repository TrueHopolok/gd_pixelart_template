extends Node


const CFG_PATH: String = "user://settings.cfg"

var config: ConfigFile


func _init() -> void:
	config = ConfigFile.new()
	var err: Error = config.load(CFG_PATH)
	if err != Error.OK: print("Error reading settings config: ", err)
