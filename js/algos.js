/*****************************************************************
 Release 0: Find the Longest Phrase
 PseudoCode
 Set result equals to empty string;
 for each item in the array, compare its length to result
   - if it is longer, set result equal to the item
   - else, do nothing
 return result
*****************************************************************/

function findLongest(array) {
  result = "";
  for (i = 0; i < array.length; i++) {
    if (array[i].length > result.length) {
      result = array[i];
    }
  }
  return result
}

/* Driver Code */
console.log(findLongest(["long phrase","longest phrase","longer phrase"]));