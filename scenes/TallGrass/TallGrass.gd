extends Node2D

# Exports
export (int, 1, 100) var level_range_min = 1
export (int, 1, 100) var level_range_max = 5
export (float, 0.0, 1.0) var encounterRate = 0.1

onready var anim_player = $AnimationPlayer

func _ready():
	if(level_range_min > level_range_max or level_range_max < level_range_min):
		push_warning("Warning: TallGrass has a wrong level_range! Setting max to min." )
		level_range_max = level_range_min
	pass

func _on_Area2D_body_entered(body):
	var randomNumber = rand_range(0.0, 1.0)
	anim_player.play("Step")
	
	# if the grass should trigger an encounter
	if randomNumber < 0.1:
		pass
		# save the playerPosition so we can place the player on the same spot after changing back from the encounter scene to the world
		#PlayerData.playerPosition = body.position
		
		# send the body (the player) the "signal" to trigger an encounter with range info
		#var monster = MonsterDatabase.get_monster_data("treey").new()
		#monster.level = 5
		#print(monster.unique_id)
		#print(monster.base_attack)
		#body.prepareEncounter(monster)
		#body.encounter_level_range = {"min": level_range_min, "max": level_range_max}
