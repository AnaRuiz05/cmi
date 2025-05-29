extends Node2D

var pers = [
	"chico2",
	"chica1",
	"chico1",
	"chica2",
	"Chico3"
]

var boca = [
	"Bocadilloalbahaca",
	"Bocadillopeperoni",
	"Bocadilloaceitunas",
	"Bocadillochampiñones",
	"Bocadillopiña"
]

func _ready() -> void:
	var ran = randi() % pers.size()
	var ranb = randi() % boca.size()

	var t = get_node(pers[ran])
	Global.personaje = ran
	t.visible = true
	print(t, pers[ran], ran)

	Global.indice_boca = ranb  # <- Guarda el índice aleatorio en Global

	siguiente_boca()  # <- Oculta todos los bocadillos

	var nodo = get_node(boca[Global.indice_boca])
	nodo.visible = true
	print(nodo, boca[Global.indice_boca], ranb)

func _process(delta: float) -> void:
	pass

func siguiente_boca():
	for nombre in boca:
		var nodo = get_node(nombre)
		nodo.visible = false

func mostrar_siguiente_boca():
	if Global.indice_boca < boca.size():
		var nodo_anterior = get_node(boca[Global.indice_boca])
		nodo_anterior.visible = false

	if Global.indice_boca + 1 < boca.size():
		Global.indice_boca += 1
		var nodo_nuevo = get_node(boca[Global.indice_boca])
		nodo_nuevo.visible = true
	else:
		print("No hay más bocadillos")
