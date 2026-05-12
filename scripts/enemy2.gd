extends Area2D

var camZoom = Vector2 (2.5,2.5)
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
		#$"../../battle".show()
		$"../../battleMap".show()
		$"../../Player".hide()
		$"../../Player/Camera2D".set_zoom(camZoom)
		$"..".queue_free()
		
