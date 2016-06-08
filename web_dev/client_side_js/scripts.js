console.log("Hello");


function addBorder(event) {
	event.target.style.border = "3px dashed green";
}

function removeBorder(event) {
	event.target.style.border = "";
}

var par = document.getElementById("test");
par.addEventListener("mouseover", addBorder);

par.addEventListener("mouseout", removeBorder);