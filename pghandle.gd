extends Container
@onready var texto = $"página/texto"
@onready var botoes = $"página/botoes"

func _ready():
	texto.visible_characters = 0
	mudar_texto()


func mudar_pagina():
	mudar_texto()
	mudar_botoes()

func mudar_texto():
	print("mudar texto")
	texto.visible_characters = 0
	$"texto timer".start()

func mudar_botoes():
	excluir_botoes()
	adicionar_botoes()

func excluir_botoes():
	print("excluir botoes")

func adicionar_botoes():
	print("adicionar botoes")


func aparecendo_texto():	
	if(texto.text.length()>=texto.visible_characters):
		if Input.is_action_pressed("mouse1"):
			texto.visible_characters += 6
		else:
			texto.visible_characters += 2
	else:
		#print(botoes.get_children())
		aparecendo_botoes()
		#botoes.visible = true
		$"texto timer".stop()

func _on_texto_timer_timeout():
	aparecendo_texto()

func aparecendo_botoes():
	for i in botoes.get_children():
			if(i.has_method("aparece")):
				i.aparece()
