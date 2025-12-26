extends HSlider

@export var bus_name: StringName

var _bus_idx: int

func _init() -> void:
	_bus_idx = AudioServer.get_bus_index(bus_name)
	assert(_bus_idx >= 0, "Error: non existent bus name was set for audio slider")

func _on_value_changed(volume: float) -> void:
	AudioServer.set_bus_volume_linear(_bus_idx, volume)
