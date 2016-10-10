/* Pseudo Code for Reverse Function
   1) Create an empty result string
   2) Calculate the length of the string n
   3) for each number from 1 to n:
      - attach character with string index n-i to result string
   4) Return result string
*/

function reverse(string) {
  resultString = "";
  length = string.length;
  for (i = 0; i < length; i++) {
    resultString += string[length-i-1];
  }
  return resultString;
}

// Driver Code
test1 = reverse("apple");
testEmpty = reverse("");
if (1 == 1) {
  console.log(test1);
  console.log(testEmpty);
}
