class_name AudioSettings
extends Control



const AUDIO_SECTION: String = "AUDIO"

## Will reset all audio settings by deleteing file at AUDIO_CFG_PATH
@export var reset: bool = false


func _ready() -> void:
	if reset: print("Warning in Audio Settings: varaible reset is set to true, remove it asap")
