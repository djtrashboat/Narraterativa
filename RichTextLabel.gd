extends RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	visible_characters = 0
	aparecendo_texto()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func aparecendo_texto():	
	if(text.length()>visible_characters):
		visible_characters += 1

func _on_texto_timer_timeout():
	aparecendo_texto()
