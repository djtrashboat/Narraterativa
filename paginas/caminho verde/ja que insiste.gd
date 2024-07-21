extends Node2D

@onready var botaoirmeio = $"Container/página/botoes/botao1"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	print("timeout")
	botaoirmeio.visible = false
