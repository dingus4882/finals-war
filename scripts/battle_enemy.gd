extends Area2D

var enemyNum = 2

var collegeboard = bosses.new("CollegeBoard", 100, 15, load("res://assets/collegeboard.png"))
var canvas = bosses.new("Canvas", 150, 20, load("res://assets/canva.png"))
var coral = bosses.new("Coral", 200, 50, load("res://assets/coral.png"))

var boss = coral

var playerStats = myPlayer.new("Player", 100, load("res://assets/spriteF.png"))
var atkTime = 10
var title = 5

var titleTimer = Timer.new()
var atkTimer = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../Timer/TimerLabel".hide()
	$"../ItemList".hide()
	if enemyNum == 0:
		boss = collegeboard
	if enemyNum == 1:
		boss = canvas
	if enemyNum == 2:
		boss = coral
	enemyNum = enemyNum + 1
	titleTimer.start(title)
	
	
func battle():
	while boss.health && playerStats.health > 0:
		$"../ItemList".show()
		boss.health -= 25
		print("ISTG")
	print("SHUT UP")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	$"../Timer/TimerLabel".show()
	$"../Timer/Label".show()
	
