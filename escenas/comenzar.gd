extends Button

var music_bus = AudioServer.get_bus_index("Master")
func _on_button_pressed() -> void:
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
