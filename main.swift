import Foundation

var array1 = ["b", "a", "d", "e", "c"]
var array2 = [4, 3, 2, 5, 1]

// sorting array1 in ascending order, and saving the result to a new variable
// array1 is unmodified
let newArray1 = array1.sorted(
  by: {
    (lhs: String, rhs: String) -> Bool in
    lhs < rhs
  }
)
// sorting array2 in descending order, and saving the result to a new variable
// array2 is unmodified
let newArray2 = array2.sorted(
  by: {
    (lhs: Int, rhs: Int) -> Bool in
    lhs > rhs
  }
)

/* 
using reduce:
[newArray, newArray2] => This results in an array containing both the arrays, but nested like this:
[["a", "b", "c", "d", "e"], [5, 4, 3, 2, 1]]
Using reduce on this array, we access each subarray, and use the addition syntax to add to an empty array. This works like this:
InitialResult: []
Combining with First Subarray:
[] + ["a", "b", "c", "d", "e"] = ["a", "b", "c", "d", "e"]
Combining with Second Subarray:
["a", "b", "c", "d", "e"] + [5, 4, 3, 2, 1] = 
["a", "b", "c", "d", "e", 5, 4, 3, 2, 1]

This is our result.
*/
var answerArray: [Any] 
= [newArray1, newArray2].reduce(
  [], 
  {
    (currentArray: [Any], subArray: [Any]) -> [Any] in
    currentArray + subArray
  }
)
print(answerArray)
