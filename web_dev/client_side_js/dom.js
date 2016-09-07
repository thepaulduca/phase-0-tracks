console.log("The script is running!")

var photo = document.getElementById("puppy");
var header = document.getElementById("header");

function addBlackBorder() {
  event.target.style.border = "5px solid black";
};

function addBiggerBorder(){
  event.target.style.border = "20px solid blue";
};

photo.addEventListener("click", addBlackBorder);

photo.addEventListener("dblclick", addBiggerBorder);
