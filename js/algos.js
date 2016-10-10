/*****************************************************************
 Release 0: Find the Longest Phrase
 PseudoCode
 1) Set result equals to empty string;
 2) for each item in the array, compare its length to result
      - if it is longer, set result equal to the item
      - else, do nothing
 3) return result
*****************************************************************/

function findLongest(array) {
  var result = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > result.length) {
      result = array[i];
    }
  }
  return result
}

/* Driver Code */
console.log(findLongest(["long phrase","longest phrase","longer phrase"]));

/*****************************************************************
 Release 1: Find a Key-Value Match
 PseudoCode
 1) Find all keys in object 1 and save into an array
 2) For each keys in  array:
      - if value in object 1 equals value in object 2, return true
 3) return false
*****************************************************************/

function keyValueMatch(object1, object2) {
  var keys = Object.keys(object1);
  for (var i = 0; i < keys.length; i++) {
    var key = keys[i];
    if (object1[key] == object2[key]) {
      return true;
    }
  }
  return false;
}

/* Driver Code */
console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));

/*****************************************************************
 Release 2: Generate Random Test Data
 PseudoCode
 1) Establish an alphabet string
 2) Create an empty result array
 3) Iterate through the integer input n, each time:
      - Generate a random number i between 1 to 10
      - Create empty string
      - Iterate through n, each time:
          - Randomly choosing a letter from alphabet string and attach it to string
      - Add string to result array
 4) Return result array
*****************************************************************/

function RandomData(n) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var resultArray = [];
  for (var i=0; i<n; i++) {
    var word = "";
    for (var j=0; j<Math.floor(Math.random()*10)+1; j++) {
      word += alphabet[Math.floor(Math.random()*26)];
    }
    resultArray.push(word);
  }
  return resultArray;
}

/* Driver Code */
for (var i=0; i<10; i++) {
  console.log("Trial " + (i+1) + ":");
  var testArray = RandomData(5);
  console.log("Test Array: " + testArray);
  console.log("Result: " + findLongest(testArray));
  console.log("***********************************")
}