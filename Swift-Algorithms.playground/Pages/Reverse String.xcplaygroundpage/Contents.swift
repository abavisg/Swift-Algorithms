//: [Previous](@previous)

import Foundation

/*
 Reverse String
 
 Write a function that reverses a string. The input string is given as an array of characters s.

 Example 1:
 Input: s = ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 
 Example 2:
 Input: s = ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
 
 */

//Example 1
var input1:[Character] = ["h","e","l","l","o"]
print("EXAMPLE 1")
reverseString(&input1)
print("---------")

//Example 2
var input2:[Character] = ["H","a","n","n","a","h"]
print("EXAMPLE 2")
reverseString(&input2)
print("---------")


func reverseString(_ s: inout [Character]) {
    for i in 0..<s.count/2 {
        var temp = s[i]
        s[i] = s[s.count-i-1]
        s[s.count-i-1] = temp
    }
    print(s)
}

//: [Next](@next)
