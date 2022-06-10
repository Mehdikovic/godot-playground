extends Node2D

var _on_user_log_in_cb = JavaScript.create_callback(self, "_on_user_log_in")
var _on_user_error_log_in_cb = JavaScript.create_callback(self, "_on_user_error_log_in")
var console = JavaScript.get_interface("console")


func _on_Button_pressed():
	var window = JavaScript.get_interface('window')
	var object = JavaScript.create_object("Object")
	object.method = 'eth_requestAccounts'
	if (window.ethereum):
		window.ethereum.request(object).then(_on_user_log_in_cb).catch(_on_user_error_log_in_cb)


func _on_user_log_in(obj):
	console.log(obj[0][0])


func _on_user_error_log_in(obj):
	console.log(obj[0].message)
