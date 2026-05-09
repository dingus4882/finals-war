extends Area2D

func _ready():
	print("I'm a door")
# Called when the node enters the scene tree for the first time.

func _on_body_entered(body):
	print("DOOR")
	$Label.show()
	$Label.set_text("DOOR(E)")


func _on_body_exited(body):
	$Label.hide()
	print("no more door")
