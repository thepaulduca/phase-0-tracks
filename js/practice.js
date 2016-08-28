var str = "String"

function reverse(string) {
	for( var x = str.length - 1, s = ''; x >= 0; s += string[x--]) { 
		console.log(x); 
	};
};

reverse(str)
