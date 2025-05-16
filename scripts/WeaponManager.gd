extends Node2D

onready var weapons = [preload("res://Pistol.tscn"), preload("res://DesertEagle.tscn"), preload("res://KPist.tscn"), preload("res://AssaultRifle.tscn")]
onready var currentWeapon = preload("res://Pistol.tscn")
onready var main = get_node("/root/Main")
onready var deagleBought = false
onready var kpistBought = false
onready var arBought = false

func _ready():
	pass
	
func switch_weapon(weapon):
	if weapon == currentWeapon:
		return
	var toBeFree = get_child(0)
	toBeFree.queue_free()
	var weaponInst = weapon.instance()
	add_child(weaponInst)
	currentWeapon = weapon

func _unhandled_input(event):
	if event.is_action_pressed("1") && !deagleBought && main.money >= 150:
		switch_weapon(weapons[1])
		main.money -= 150
	
	if event.is_action_pressed("2") && !kpistBought && main.money >= 250:
		switch_weapon(weapons[2])
		main.money -= 250
		
	if event.is_action_pressed("3") && !arBought && main.money >= 500:
		switch_weapon(weapons[3])
		main.money -= 500
	
#	if event.is_action_pressed("1"):
#		switch_weapon(weapons[0])
#
#	if event.is_action_pressed("2"):
#		if deagleBought:
#			switch_weapon(weapons[1])
#		elif main.money >= 150 && !deagleBought:
#			switch_weapon(weapons[1])
#			deagleBought = true
#			main.money -= 150
#		else:
#			pass
#
#	if event.is_action_pressed("3"):
#		if kpistBought:
#			switch_weapon(weapons[2])
#		elif main.money >= 300 && !kpistBought:
#			switch_weapon(weapons[2])
#			kpistBought = true
#			main.money -= 300
#		else:
#			pass
#
#	if event.is_action_pressed("4"):
#		if arBought:
#			switch_weapon(weapons[3])
#		elif main.money >= 500 && !arBought:
#			switch_weapon(weapons[3])
#			arBought = true
#			main.money -= 500
#		else:
#			pass
