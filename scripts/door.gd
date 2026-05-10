extends Area2D

func _ready():
	$"../../../classroomMap".hide()
	print("I'm a door")
# Called when the node enters the scene tree for the first time.

func _on_body_entered(body):
	print("DOOR")
	$Label.show()
	$Label.set_text("Door(E)")


func _on_body_exited(body):
	$Label.hide()
	print("no more door")

func _input(event):
	if event.is_action_pressed("EnterDoor"):
		$"../../../classroomMap".show()
		$"../..".queue_free()
		
