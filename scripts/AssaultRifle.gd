extends "res://Assets/Scripts/Weapon.gd"

func _ready():
	damage = 50
	maxAmmo = 30
	currentAmmo = 30
	shootSound = [preload("res://Assets/Sounds/gunshots/AR/AUG-1.wav"), preload("res://Assets/Sounds/gunshots/AR/AUG-2.wav"), preload("res://Assets/Sounds/gunshots/AR/AUG-3.wav")]
	bloodScale = [1.5, 1]
	casingScale = [1.5, 1.25]
	smokeScale = [1.5, 1.5]
