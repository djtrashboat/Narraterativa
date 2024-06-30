extends Container
@onready var texto = $"página/texto"
@onready var botoes = $"página/botoes"

func _ready():
	mudar_texto()


func mudar_pagina():
	mudar_texto()
	mudar_botoes()

func mudar_texto():
	print("mudar texto")
	$"texto timer".start()

func mudar_botoes():
	excluir_botoes()
	adicionar_botoes()

func excluir_botoes():
	print("excluir botoes")

func adicionar_botoes():
	print("adicionar botoes")


func aparecendo_texto():	
	if(texto.text.length()>texto.visible_characters):
		texto.visible_characters += 2
	else:
		botoes.visible = true
		$"texto timer".stop()

func _on_texto_timer_timeout():
	aparecendo_texto()



func _on_botao_1_button_down():
	
	#get_parent().get_tree().change_scene_to_file("res://scenes/world.tscn")
	#if BaseButton.scene_changer:
	#	print(Button.proxima_pagina)
	pass
