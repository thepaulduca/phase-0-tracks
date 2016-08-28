for (x = 10; x > 0; x--) {
	console.log(x)
}



var str = "String"

function reverse(string) {
	for( var x = str.length - 1, s = ''; x >= 0; s += string[x--]) { }
		return s;
}

console.log(reverse(str))
