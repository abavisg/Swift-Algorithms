//: [Previous](@previous)

import Foundation

/*
 Arrays: Left Rotation
 
 A left rotation operation on an array shifts each of the array's elements  unit to the left. For example, if left rotations are performed on array , then the array would become . Note that the lowest index item moves to the highest index in a rotation. This is called a circular array.

 Given an array  of  integers and a number, , perform  left rotations on the array. Return the updated array to be printed as a single line of space-separated integers.
 
 Input: [1, 2, 3, 4, 5]
 Output:[5, 1, 2, 3, 4]
 */

var input = [1, 2, 3, 4, 5]
var rotations = 4

rotLeft(input, rotations)

func rotLeft(_ a: [Int], _ d: Int) -> [Int] {
    /*
    How to calculate new position
    
    if i less than rotations
     new position = n - d + i
     0 = 5 - 4 + 0 = 1
     1 = 5 - 4 + 1 = 2
     2 = 5 - 4 + 2 = 3
     3 = 5 - 4 + 3 = 4
     
    else
     new position = i - d
     4 = 4 - 4 = 0
    */
    let n = a.count
    var output = [Int](repeating: 0, count: a.count)
    for i in 0..<a.count {
        var newPos = 0
        if (i < d) {
           newPos = n - d + i
           output[newPos] = a[i]
        } else{
           newPos = i - d
           output[newPos] = a[i]
        }
    }
    return output

}
//: [Next](@next)
