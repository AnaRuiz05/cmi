extends Node2D



func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	pass

func _on_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://escenas/PantallInicio.tscn")
	Global.indice_cliente += 1
	Global.ingredientes.clear()

func _on_repetir_pressed() -> void:
	get_tree().change_scene_to_file("res://juego1.tscn")
	Global.ingredientes.clear()
