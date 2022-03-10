// Sudama Dewda
//Here's a generic implementation of insertion sort without using sort keyword in Swift.
import UIKit

// unsorted String & Int array
var unsortedStringArray = ["B", "C", "Z", "A", "H"]
var unsortedIntArray = [7,8,3,4,5,9,1,2,6]

// function declare
func sortFunction<T:Comparable>(array: [T]) -> [T]{
  
    var unsortedArray = array
    for i in 0..<unsortedArray.count {
        for j in 0..<unsortedArray.count{
            var temp: T
            if unsortedArray[i] < unsortedArray[j] {
                temp = unsortedArray[i]
                unsortedArray[i] = unsortedArray[j]
                unsortedArray[j] = temp
            }
        }
    }
    return unsortedArray
}
//calling func
let resultSortedStringArray = sortFunction(array: unsortedStringArray)
let resultSortedIntArray = sortFunction(array: unsortedIntArray)

// Output
print(resultSortedStringArray) //["A", "B", "C", "H", "Z"]
print(resultSortedIntArray) //[1, 2, 3, 4, 5, 6, 7, 8, 9]

