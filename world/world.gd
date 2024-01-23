extends Node2D

@onready var tile_map = $TileMap

const MAP_SIZE = Vector2(128,128)
const LAND_CAP = 0.1

func _ready():
	generate_world()
	
func _process(delta):
	if Input.get_axis("ui_accept","ui_cancel"):
		generate_world()

func generate_world():
	var random = RandomNumberGenerator.new()
	random.randomize()
	var noise: FastNoiseLite = FastNoiseLite.new()
	noise.seed = random.randi_range(-1000, 5000)# randi()
	
	var cells: Array = []
	for x in MAP_SIZE.x:
		for y in MAP_SIZE.y:
			var a = noise.get_noise_2d(x,y) 
			if a < LAND_CAP:
				cells.append(Vector2(x,y))
			else:
				tile_map.set_cell(0, Vector2(x,y), 1,Vector2(0,5), 0)
	
	tile_map.set_cells_terrain_connect(0, cells, 0, 0)
			
