extends Node2D
@onready var texto = $"Container/página/texto"
@onready var container = $Container



func _on_botao_1_button_down():
	texto.text = "claro que tenho"
	container.mudar_pagina()
	
