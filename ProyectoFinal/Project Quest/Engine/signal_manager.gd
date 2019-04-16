extends Node

signal send_dialog
signal update_inventory
signal update_counter

func show(texture, text):
	
	emit_signal("send_dialog", texture, text)

func update_inventory():
	emit_signal("update_inventory")
	
func update_counter(number, item):
	emit_signal("update_counter", number, item)