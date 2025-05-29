extends Button


func _ready() -> void:
	$Cortadapeperoni1.visible = false
	#$Cortada2.visible = false
	#$Cortada3.visible = false
	#$Cortada4.visible = false

func _process(delta: float) -> void:
	pass


func _on_botoncortar_pressed() -> void:
	
	$Cortadapeperoni1.visible = true


#func _on_botoncortar_pressed() -> void:
	
	#$Cortada2.visible = true
	
#func _on_botoncortar_pressed() -> void:
	
	#$Cortada3.visible = true
	
#func _on_botoncortar_pressed() -> void:
	
	#$Cortada4.visible = true
