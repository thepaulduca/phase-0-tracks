var color_arry = ['blue', 'red', 'green', 'yellow'];
var names_arry = ['Ed', 'seabiscut', 'old faithful', 'john'];

color_arry.push('purple');
names_arry.push('karen');

console.log(color_arry);
console.log(names_arry);

var horse = {};

for (i = 0; i < names_arry.length; i++) {
	horse[names_arry[i]] = color_arry[i];
}

console.log(horse);

// var horse = {};
// for (x in color_arry) {
// 	horse[]
// }