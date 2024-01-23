extends Node2D

@export var ENEMY_LIFE_POINTS: int = 10
@export var ENEMY_DEAD: bool = false;
@export var points: int =  1
@export var speed: float = 30.0

@export var default_facing: FACING =  FACING.LEFT

enum FACING { LEFT = -1 , RIGHT = 1 }


var _gravity: float = 800.0
var _facing: FACING = default_facing
#var _player_ref: Player
var _dying: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
