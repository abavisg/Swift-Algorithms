//: [Previous](@previous)

import Foundation

/*
 Two Sum
 
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
 
 Example 1:
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Output: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 Example 2:
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Example 3:
 Input: nums = [3,3], target = 6
 Output: [0,1]
 
 */

let nums1 = [2,7,11,15]
let target1 = 9
let example1Result = twoSum(nums1, target1)
print("EXAMPLE 1")
print("Output: \(example1Result)")
print("---------")

let nums2 = [3,2,4]
let target2 = 6
let example2Result = twoSum(nums2, target2)
print("EXAMPLE 2")
print("Output: \(example2Result)")
print("---------")

let nums3 = [3,3]
let target3 = 6
let example3Result = twoSum(nums3, target3)
print("EXAMPLE 3")
print("Output: \(example3Result)")
print("---------")


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //solutionBruteForce(nums, target)
    //solutionOptimisedTwoPass(nums, target)
    solutionOptimisedOnePass(nums, target)
}

func solutionBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return []
}

func solutionOptimisedTwoPass(_ nums: [Int], _ target: Int) -> [Int] {
    
    var dict = [Int: Int]()
    
    for i in 0..<nums.count {
        dict[nums[i]] = i
    }
    
    for i in 0..<nums.count {
        var diff = target - nums[i]
        if let index = dict[diff], index != i {
            return [i, index]
        }
    }
    
    return []
}

func solutionOptimisedOnePass(_ nums: [Int], _ target: Int) -> [Int] {
    
    var dict = [Int: Int]()
    
    for i in 0..<nums.count {
        
        var diff = target - nums[i]
        
        if let index = dict[diff], index != i {
            return [i, index]
        }
        dict[nums[i]] = i
    }
    
    return []
}

//: [Next](@next)

