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

// Class and Object

function Car(brand, milage, insuranceStatus) {
  this.brand = brand;
  this.milage = milage;
  this.insurance = insuranceStatus;

  this.printInfo = function() {
    console.log("This car is a " + this.brand + ".");
    console.log("It has run " + this.milage + " miles.");
    console.log("Insurance coverage: " + this.insurance + ".");
  };

  console.log("Finished generating new car!");
}

// Driver Code
var testCar = new Car('Toyota', 3000, true);
testCar.printInfo();