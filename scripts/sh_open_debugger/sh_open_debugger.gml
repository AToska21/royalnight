// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sh_open_debugger (args) {
	if (args[1] != "deeznutsarefreezing") {
		return "Hey! You! Yeah, you. If you're reading this it means you either decompiled the game or found the shell. Please play the game normally, thank you!"
	}
	if (args[1] == "deeznutsarefreezing") {
		score += 16;
		return "Alright, have it your way. At least have some respect and don't spoil the game."
	}
}