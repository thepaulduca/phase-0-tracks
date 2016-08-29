// have an empty string (longest_string) to store the longest string inside of and to compare to
// iterate through the array
// compare each string length to the (longest_string) varible length
//if it is longer then the current string stored in (longest_string) 
//replace the variable (longest_string) with the current string)
//return the (longest_string) variable

function longest_string_finder(array) {
for(var x = 0, longest_string = ""; x < array.length; x ++)
 if(longest_string.length < array[x].length){
 	longest_string = array[x]
 };
	return longest_string;
};


var my_array = ["Saab", "Volvo", "longest", "BMW"]
console.log(longest_string_finder(my_array));


/////////iterate through two objects and see if they have matching key, value pair
// used the contain function to check if an array had an object then implimented this method in other functions
// this allowed me to seperate the keys and properties and then check which ones matched
// the only problem is if they had a match which is not at the same index


function contains(array, obj_to_check){
	for(var i = 0; i < array.length; i ++) {
		if (array[i] == obj_to_check) {
			return true;
		}
	}	
}
function sharedKeys(obj1, obj2) {
	var obj1Keys = Object.keys(obj1);
	var obj2Keys = Object.keys(obj2);
	var sharedArray = [];
	for( var x = 0; x < obj1Keys.length; x++){
		if (contains(obj2Keys, obj1Keys[x])){
		sharedArray.push(obj1Keys[x]);
		} else {
		sharedArray.push('//Not a Match//');
		}
	}
	return sharedArray;
}
function sharedProperties(obj1, obj2) {
	var obj1Props = [];
	var obj2Props = [];
	var propertiesArray = [];
	for(var i in obj1)
		obj1Props.push(obj1[i]);
	for(var x in obj2)
		obj2Props.push(obj2[x]);
	for (var y = 0; y < obj1Props.length; y ++){
		if(contains(obj1Props, obj2Props[y])){
			propertiesArray.push(obj2Props[y])
		} else {
			propertiesArray.push('//Not a Match//');
		}
	}
	return propertiesArray;
}

function matchingOperator (obj1, obj2) {
	var matchingProperties = sharedProperties(obj1,obj2);
	var matchingKeys = sharedKeys(obj1, obj2);
	var matchingHash = {}
	for(x = 0; x < matchingKeys.length; x ++) {
			matchingHash[matchingKeys[x]] = matchingProperties[x]
	}
	return matchingHash;
}
// create a random string of random length between one and ten

//this methods output is a random character in the alaphabet 
//char at selects the charcter based on a number input
//math.random generates a random decimal number
// multiply the decimal by 26 and floor it to pick the random character 
function pickRandomChar() {
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	var randomChar = alpha.charAt(Math.floor(Math.random() * 26));
	return randomChar;
}
// similar logic except this is selecting a number from 1 to 10 to determine lengeth

function numOneThruTen(){
	var num = Math.floor(Math.random() * 10 + 1);
	return num; 
}

//use the previous two methods to create a string and add it into an empty string
function stringCreator(){
	var length = numOneThruTen();
	var randoString = "";
	for(x = 0; x < length; x ++){
		randoString += pickRandomChar();
	}
	return randoString;
}

//repeat the previous method as many times as needed and push the strings into an array
function arrayOfString(numOfString){
	var arrayOfStrings = [];
	for(var x = 0; x < numOfString; x ++) {
		arrayOfStrings.push(stringCreator())
	}
	return arrayOfStrings;
}

console.log(arrayOfString(3)) 






