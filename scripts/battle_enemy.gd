extends Area2D

var enemyNum = 2

var collegeboard = bosses.new("CollegeBoard", 100, 15, load("res://assets/collegeboard.png"))
var canvas = bosses.new("Canvas", 150, 20, load("res://assets/canva.png"))
var coral = bosses.new("Coral", 200, 50, load("res://assets/coral.png"))

var boss = coral

var playerStats = myPlayer.new("Player", 100, load("res://assets/spriteF.png"))
var atkTime = 5
var title = 3

var titleTimer = Timer.new()
@onready var atkTimer = $Timer

var tiny = Vector2(0.75, 0.75)
# Called when the node enters the scene tree for the first time.
func _ready():
	titleTimer.set_wait_time(title)
	atkTimer.set_wait_time(atkTime)
	if enemyNum == 0:
		boss = collegeboard
		$Sprite2D.set_texture(load("res://assets/collegeboard.png"))
	if enemyNum == 1:
		boss = canvas
		$Sprite2D.set_texture(load("res://assets/canva.png"))
	if enemyNum == 2:
		boss = coral
		$Sprite2D.set_texture(load("res://assets/coral.png"))
		$Sprite2D.set_scale(tiny)
	enemyNum = enemyNum + 1
	_battle()
	
func _battle() -> void:
	while boss.health && playerStats.health > 0:
		$"../ItemList".set_visible(true)
		boss.health -= 25
		atkTimer.start(atkTime)
		print("enemy choosing attack!")
		playerStats.health -= boss.dmg
		#print("ISTG")
	print("SHUT UP")


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_timer_timeout():
	print("Timer done!")
	
