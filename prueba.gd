extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$QuesoPizza.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$QuesoPizza.visible = true
