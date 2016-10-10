var colors = ["blue", "red", "yellow", "black"];
var names = ["Abby", "Ed", "Bobby", "Vladimir"];

// Add another color: pink
colors.push("pink");
// Add another name: Jack
names.push("Jack");

// Create Objects
var horseList = {};

// Check array length
if (colors.length != names.length) {
  console.log("Wrong Number of Array Items.");
} 
else {
  for (i = 0; i < colors.length; i++) {
    horseList[names[i]] = colors[i];
  }
}

// Driver Code
// console.log(horseList);
// console.log(horseList['Abby']);
// console.log(horseList.Ed);