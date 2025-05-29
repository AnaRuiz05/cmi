extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$PeperoniPizza.visible = false
	$QuesoPizza.visible = false
	$SalsaPizza.visible = false
	$PanPizza.visible = false
	$AceitunaPizza.visible = false
	$PiñaPizza.visible = false
	$AlbahacaPizza.visible = false
	$ChampisPizza.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_botonqueso_pressed() -> void:
	$QuesoPizza.visible = true


func _on_botonsalsa_pressed() -> void:
	$SalsaPizza.visible = true


func _on_botonmasa_pressed() -> void:
	$PanPizza.visible = true


func _on_deshacer_pressed() -> void:
	$PeperoniPizza.visible = false
	$QuesoPizza.visible = false
	$SalsaPizza.visible = false
	$PanPizza.visible = false
	$AceitunaPizza.visible = false
	$PiñaPizza.visible = false
	$AlbahacaPizza.visible = false
	$ChampisPizza.visible = false
	Global.ingredientes.clear()

func _on_pepperoni_pressed() -> void:
	
	$PeperoniPizza.visible = true
	if "PeperoniPizza" not in Global.ingredientes:
		Global.ingredientes.append("PeperoniPizza")

func _on_botonaceituna_pressed() -> void:
	$AceitunaPizza.visible = true
	if "AceitunaPizza" not in Global.ingredientes:
		Global.ingredientes.append("AceitunaPizza")

func _on_botonpiña_pressed() -> void:
	$PiñaPizza.visible = true
	if "PiñaPizza" not in Global.ingredientes:
		Global.ingredientes.append("PiñaPizza")

func _on_botonalbahaca_pressed() -> void:
	$AlbahacaPizza.visible = true
	if "AlbahacaPizza" not in Global.ingredientes:
		Global.ingredientes.append("AlbahacaPizza")

func _on_botonchampis_pressed() -> void:
	$ChampisPizza.visible = true
	if "ChampiPizza" not in Global.ingredientes:
		Global.ingredientes.append("ChampiPizza")

func _on_hornoboton_pressed() -> void:
	pass # Replace with function body.
