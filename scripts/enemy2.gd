extends Area2D

var camZoom = Vector2 (2.5,2.5)
var playerLoc = Vector2(135.0,25.0)
var playerScale = Vector2(1.0, 1.0)
var enemyNum = 0

var apIdle = idleEnemy.new("Collegeboard", load("res://assets/collegeboard.png"))
var canIdle = idleEnemy.new("Canvas", load("res://assets/canva.png"))
var coralIdle = idleEnemy.new("Coral", load("res://assets/coral.png"))
# Called when the node enters the scene tree for the first time.
func _ready():
	if enemyNum == 0:
		$Sprite2D.set_texture(apIdle.texture)
	if enemyNum == 1:
		$Sprite2D.set_texture(canIdle.texture)
	if enemyNum == 2:
		$Sprite2D.set_texture(coralIdle.texture)
	print("ooga booga")
	enemyNum = enemyNum+1

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
		$"../../Player".set_motion_mode(1)
		$"../../Player".hide()
		$"../../Player/Camera2D".set_zoom(camZoom)
		$"../../battleMap/ItemList".hide()
		#$"../../Player/Sprite2D".draw_set_transform(playerLoc, 0.0, playerScale)
		$"..".queue_free()
		
