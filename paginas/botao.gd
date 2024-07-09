extends Button

@export var proxima_pagina: String
@export var scene_changer = true
@export var waitable = false
@export var _waittime = 7.0
@export var fake = false
# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	self.disabled = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if fake and is_hovered():
		visible = false

func aparece():
	if !waitable:
		self.visible = true
		self.disabled = false
	else:
		var timer := Timer.new()
		add_child(timer)
		timer.wait_time = _waittime
		timer.one_shot = true
		timer.start()
		timer.timeout.connect(_on_timer_Timeout)

func _on_button_down():
	#print(get_tree().get_current_scene())
	if scene_changer:
		get_tree().get_current_scene().get_tree().change_scene_to_file(proxima_pagina)

func _on_timer_Timeout():
	self.visible = true
	self.disabled = false
