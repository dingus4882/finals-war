extends Area2D

var enemyNum = 0

var collegeboard = bosses.new("CollegeBoard", 100, 15, load("res://assets/collegeboard.png"))
var canvas = bosses.new("Canvas", 150, 20, load("res://assets/canva.png"))
var coral = bosses.new("Coral", 200, 50, load("res://assets/coral.png"))


# Called when the node enters the scene tree for the first time.
func _ready():
	if enemyNum == 0:
		$Sprite2D.set_texture(collegeboard.texture)
	if enemyNum == 1:
		$Sprite2D.set_texture(canvas.texture)
	if enemyNum == 2:
		$Sprite2D.set_texture(coral.texture)
	enemyNum = enemyNum + 1
	
func battle():
	print("SHUT UP")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
