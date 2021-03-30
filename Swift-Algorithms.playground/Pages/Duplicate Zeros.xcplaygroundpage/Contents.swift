//: [Previous](@previous)

import Foundation

/*
 Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.
 Note that elements beyond the length of the original array are not written.
 Do the above modifications to the input array in place, do not return anything from your function.

 Example 1:
 Input: [1,0,2,3,0,4,5,0]
 Output: null
 Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
 
 Example 2:
 Input: [1,2,3]
 Output: null
 Explanation: After calling your function, the input array is modified to: [1,2,3]
 
 */

//Example 1
var input1 = [1,0,2,3,0,4,5,0]
duplicateZeros(&input1)
print("EXAMPLE 1")
print("Modified array: \(input1)")
print("--------")

//Example 2
var input2 = [1,2,3]
duplicateZeros(&input2)
print("EXAMPLE 2")
print("Modified array: \(input2)")
print("--------")

func duplicateZeros(_ arr: inout [Int]) {
    var skipNext = false
    for i in 0..<arr.count {
        if skipNext == false && arr[i] == 0 {
            arr.removeLast()
            arr.insert(0, at: i)
            skipNext = true
            continue
        }
        skipNext = false
    }
}

//: [Next](@next)
