extends Node2D

var frutas = [
	preload("res://elementos/Aceituna_Pizza.png"),
	preload("res://elementos/Albahaca_Pizza.png"),
	preload("res://elementos/Champis_Pizza.png"),
	preload("res://elementos/Peperoni_Pizza.png"),
	preload("res://elementos/Piña_Pizza.png")
	
]


var _last_fruit = preload()


func _ready():
	# Pick 100 fruits randomly.
	for i in range(100):
		print(get_fruit())


func get_fruit():
	var random_fruit = _fruits[randi() % _fruits.size()]
	while random_fruit == _last_fruit:
		# The last fruit was picked. Try again until we get a different fruit.
		random_fruit = _fruits[randi() % _fruits.size()]

	# Note: if the random element to pick is passed by reference,
	# such as an array or dictionary,
	# use `_last_fruit = random_fruit.duplicate()` instead.
	_last_fruit = random_fruit

	# Returns "apple", "orange", "pear", or "banana" every time the code runs.
	# The function will never return the same fruit more than once in a row.
	return random_fruit


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	pass # Replace with function body.
