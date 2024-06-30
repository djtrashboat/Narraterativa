extends Button

@export var proxima_pagina: String
@export var scene_changer = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	#print(get_tree().get_current_scene())
	if scene_changer:
		get_tree().get_current_scene().get_tree().change_scene_to_file(proxima_pagina)
