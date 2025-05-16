extends "res://Assets/Scripts/Weapon.gd"

func _ready():
	damage = 35
	maxAmmo = 30
	currentAmmo = 30
	shootSound = [preload("res://Assets/Sounds/gunshots/KPist/Baretta-1.wav"), preload("res://Assets/Sounds/gunshots/KPist/Baretta-2.wav"), preload("res://Assets/Sounds/gunshots/KPist/Baretta-3.wav")]
	bloodScale = [1, 1]
	casingScale = [1, 1]
	smokeScale = [1, 1]
