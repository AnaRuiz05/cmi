extends Node2D

var paso_actual := 0
var cortes := []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:


	cortes = [
	$Cortadapeperoni1,
	$Cortadapeperoni2,
	$Cortadapeperoni3,
	$Cortadapeperoni4,
	$Cortadapiña1,
	$Cortadapiña2,
	$Cortadapiña3,
	$Cortadapiña4,
	$Cortadaaceituna1,
	$Cortadaaceituna2,
	$Cortadaaceituna3,
	$Cortadaaceituna4,
	$Cortadachampi1,
	$Cortadachampi2,
	$Cortadachampi3,
	$Cortadachampi4,
	$Cortadaalbahaca1,
	$Cortadaalbahaca2,
	$Cortadaalbahaca3,
	$Cortadaalbahaca4
]

	for corte in cortes:
		corte.visible = false

	var ingrediente = Global.ingredientes[0]

	match ingrediente:
		"ChampiPizza":
			cortes = [
				$Cortadachampi1,
				$Cortadachampi2,
				$Cortadachampi3,
			$Cortadachampi4
			]
		"PiñaPizza":
			cortes = [
				$Cortadapiña1,
				$Cortadapiña2,
				$Cortadapiña3,
				$Cortadapiña4
			]
		"PeperoniPizza":
			cortes = [
				$Cortadapeperoni1,
				$Cortadapeperoni2,
				$Cortadapeperoni3,
				$Cortadapeperoni4
			]
		"AlbahacaPizza":
			cortes = [
				$Cortadaalbahaca1,
				$Cortadaalbahaca2,
				$Cortadaalbahaca3,
				$Cortadaalbahaca4
			]
		"AceitunaPizza":
			cortes = [
				$Cortadaaceituna1,
				$Cortadaaceituna2,
				$Cortadaaceituna3,
				$Cortadaaceituna4
			]
	paso_actual = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_botoncortar_pressed() -> void:
	if paso_actual < cortes.size():
		cortes[paso_actual].visible = true
		paso_actual += 1

func _on_botonempaquetar_pressed() -> void:
	get_tree().change_scene_to_file("res://juego5.tscn")
