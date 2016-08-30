function pickRandomChar() {
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	var randomChar = alpha.charAt(Math.floor(Math.random() * alpha.length));
	return randomChar;
}
function numOneThruTen(){
	var num = Math.floor(Math.random() * 10 + 1);
	return num; 
}
function stringCreator(){
	var length = numOneThruTen();
	var randoString = "";
	for(x = 0; x < length; x ++){
		randoString += pickRandomChar();
	}
	return randoString;
}
function arrayOfString(numOfString){
	var arrayOfStrings = [];
	for(var x = 0; x < numOfString; x ++) {
		arrayOfStrings.push(stringCreator())
	}
	return arrayOfStrings;
}

console.log(arrayOfString(3)) 