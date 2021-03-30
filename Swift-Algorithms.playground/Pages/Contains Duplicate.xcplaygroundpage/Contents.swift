//: [Previous](@previous)

import Foundation

/*
 Contains Duplicate
 
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 Example 1:
 Input: nums = [1,2,3,1]
 Output: true
 
 Example 2:
 Input: nums = [1,2,3,4]
 Output: false
 
 Example 3:
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
 
 */

//Example 1:
let input1 = [1,2,3,1]
print("EXAMPLE 1")
let output1 = containsDuplicate(input1)
print("output: \(output1)")
print("---------")

//Example 2:
let input2 = [1,2,3,4]
print("EXAMPLE 2")
let output2 = containsDuplicate(input2)
print("output: \(output2)")
print("---------")

//Example 3:
let input3 = [1,1,1,3,3,4,3,2,4,2]
print("EXAMPLE 3")
let output3 = containsDuplicate(input3)
print("output: \(output3)")
print("---------")

func containsDuplicate(_ nums: [Int]) -> Bool {
    //return solutionBruteForce(nums)
    return solutionHashTable(nums)
}

func solutionBruteForce(_ nums: [Int]) -> Bool{
    var foundValue = false
    for i in 0..<nums.count {
        for j in 0..<nums.count {
           // print("j: \(j)")
            if j == i {
                continue
            }
            if nums[i] == nums[j] {
                return true
            }
        }
    }
    return false
}

func solutionHashTable(_ nums: [Int]) -> Bool{
    var set = Set<Int>()
    for x in nums {
        if set.contains(x) {
            return true
        }
        set.insert(x)
    }
    return false
}

//: [Next](@next)
