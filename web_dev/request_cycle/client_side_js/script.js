console.log("Running!");

var ths = document.getElementsByTagName("th");
for (var i=0; i<ths.length; i++) {
  var th = ths[i];
  th.style.color = "red";
}

var tds = document.getElementsByTagName("td");
for (var i=0; i<tds.length; i++) {
  var td = tds[i];
  td.style.color = "green";
}

var table = document.getElementsByTagName("table")[0];
table.style.border = "2px solid black";

function colorChange() {
  var id = event.target.id;
  if (id == "banana") {
    event.target.style.color = "yellow";
  }
  else if (id == "apple") {
    event.target.style.color = "red";
  }
  else if (id == "lime") {
    event.target.style.color = "green";
  }
}

var items = document.getElementsByTagName("ul");
for (var i=0; i<items.length; i++) {
  var item=items[i];
  item.addEventListener("click", colorChange);
}