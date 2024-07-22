extends Node2D
@onready var texto = $"Container/página/texto"
@onready var container = $Container

func _on_botao_2_button_down():
	texto.text = "infelizmente essa não é uma opção no momento, bem que gostariamos que fosse"
	container.mudar_pagina()
	$"Container/página/botoes/botao2".queue_free()


func _on_botao_3_button_down():
	texto.text = "Toc! Toc! nada acontece..."
	container.mudar_pagina()


func _on_botao_4_button_down():
	texto.text = "Você ouve barulhos de construção, além de sussuros esquisitos"
	container.mudar_pagina()
