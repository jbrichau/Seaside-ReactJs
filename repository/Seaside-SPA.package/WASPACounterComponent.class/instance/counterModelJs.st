scripts
counterModelJs
^' $model = function(){ 

var counter;

var _server_callback_fn;
var _update = function() { $("#counter").html(counter); _server_callback_fn([counter]); };

var initialize = function(objects,callback_fn) { debugger; counter = objects[0]; _server_callback_fn = callback_fn; };
var increase = function() { counter = counter + 1; _update(); };
var decrease = function() { counter = counter - 1; _update(); };

return { "initialize": initialize, "increase": increase, "decrease": decrease };
	
}()'