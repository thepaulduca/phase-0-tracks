$(document).ready(function(){
	$('div').click(function(){
		$('div').fadeTo('slow',0.3)
	})
	$('div').dblclick(function(){
		$('div').fadeTo('slow',1)
	})
	$('p').after('<h1> ADDED </h1>')
});
