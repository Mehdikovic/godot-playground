extends Node2D

var _call_back = JavaScript.create_callback(self, "_on_user_log_in")
var _err_call_back = JavaScript.create_callback(self, "_on_user_error_log_in")
var console = JavaScript.get_interface("console")

func _ready():
	var window = JavaScript.get_interface('window')
	var object = JavaScript.create_object("Object")
	object.method = 'eth_requestAccounts'
	if (window.ethereum):
		console.log(window.ethereum)
		window.ethereum.request(object).then(_call_back).catch(_err_call_back)


func _on_user_log_in(obj):
	console.log(obj)


func _on_user_error_log_in(obj):
	console.log(obj)
