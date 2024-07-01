extends Node2D

@onready var texto = $"Container/página/texto"
@onready var container = $Container

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	texto.text = "muito bem, agora a seta para a direita"
	container.mudar_pagina()


func _on_area_2_ddir_body_entered(body):
	texto.text = "parabéns, você está indo muito bem nisso
agora vá o máximo para a esquerda que conseguir"
	container.mudar_pagina()


func _on_area_2_desq_body_entered(body):
	get_tree().change_scene_to_file("res://paginas/pagina obediente.tscn")
