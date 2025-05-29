extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"cintamovimiento/pizzamovimiento/PizzaChampi".visible = false
	$"cintamovimiento/pizzamovimiento/PizzaPiña".visible = false
	$"cintamovimiento/pizzamovimiento/PizzaPeperoni".visible = false
	$"cintamovimiento/pizzamovimiento/PizzaAlbahaca".visible = false
	$"cintamovimiento/pizzamovimiento/PizzaAceituna".visible = false


	for ingrediente in Global.ingredientes:
		match ingrediente:
			"ChampiPizza":
				$"cintamovimiento/pizzamovimiento/PizzaChampi".visible = true
			"PiñaPizza":
				$"cintamovimiento/pizzamovimiento/PizzaPiña".visible = true
			"PeperoniPizza":
				$"cintamovimiento/pizzamovimiento/PizzaPeperoni".visible = true
			"AlbahacaPizza":
				$"cintamovimiento/pizzamovimiento/PizzaAlbahaca".visible = true
			"AceitunaPizza":
				$"cintamovimiento/pizzamovimiento/PizzaAceituna".visible = true
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_hornoboton_pressed() -> void:
	$cintamovimiento.play("juego2cinta")
	$cintamovimiento/pizzamovimiento.play("pizzasmovimiento")
