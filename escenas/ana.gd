extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play("escena2")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_animation_finished(anim_name: StringName) -> void:
		get_tree().change_scene_to_file("res://escenas/ingredientes.tscn")
