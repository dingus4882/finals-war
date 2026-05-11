extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("ooga booga")

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_body_entered(body):
	print("ooh scary")
	$Label.show()
	$Label.set_text("Fight(F)")

func _on_body_exited(body):
	print("oof")
	$Label.hide()

func _input(event):
	if event.is_action_pressed("Battle"):
		$"../../battle".show()
		$"..".queue_free()
		
