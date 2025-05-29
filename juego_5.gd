extends Node2D

var pers = [
	"chico2",
	"chica1",
	"chico1",
	"chica2",
	"Chico3"
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Global.personaje)
	var t = get_node(pers[Global.personaje])
	t.visible = true
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_cajaentrega_pressed() -> void:
	get_tree().change_scene_to_file("res://felicidades.tscn")
