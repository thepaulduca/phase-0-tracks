// have an empty string (longest_string) to store the longest string inside of and to compare to
// iterate through the aray
// compare each string to the (longest_string) varible, if it is longer then the current string stored in (longest_string) 
// then replace the variable (longest_string) with the current string)
//return the (longest_string) variable

var my_array = ["Saab", "Volvo", "longest", "BMW"]

function longest_string_finder(array) {
for(x = 0, longest_string = ""; x < array.length; x ++)
 if(longest_string.length < array[x].length){longest_string = array[x]};
	return longest_string;
};

console.log(longest_string_finder(my_array));


//array[x].length > 3


// function longest_string_finder(array) {
// for(var x = 0, longest_string = ""; x >= array.length; x ++){
// if {console.log("anything")}; };
// return longest_string;
// };

// var my_array = ["this", "another one", "that"];

// longest_string_finder(my_array);