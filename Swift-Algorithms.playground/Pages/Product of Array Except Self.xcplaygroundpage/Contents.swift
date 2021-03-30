//: [Previous](@previous)

import Foundation

/*
 Product of Array Except Self
 
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 */

func productExceptSelf(_ nums: [Int]) -> [Int] {
        
    //return getResultNested(nums: nums)
    //return getResultDivision(nums: nums)
    //return getResultTimeComplexity(nums: nums)
    return getResultSpaceComplexity(nums: nums)
}

//Solution nested
func getResultNested(nums: [Int]) -> [Int] {
    var result = [Int]()
    
    for index in 0..<nums.count {
        var product = 0

        for num in nums {
            
            if num != nums[index] {
                if product == 0 {
                    product = num
                } else {
                    product = product * num
                }
            }
        }
        result.append(product)
    }
    return result
}

//Solution division
func getResultDivision(nums: [Int]) -> [Int] {
    var result = [Int]()
    
    var productOfAll = nums[0]
    for index in 1..<nums.count {
        productOfAll *= nums[index]
    }
    
    for index in 0..<nums.count {
        var product = productOfAll / nums[index]
        
        
        
        result.append(product)
    }
    return result
}

//Solution Time complexity
func getResultTimeComplexity(nums: [Int]) -> [Int] {
    let length = nums.count
    var leftArray: [Int] = Array(repeating: 0, count: length)
    var rightArray: [Int] = Array(repeating: 0, count: length)
    var result: [Int] = Array(repeating: 0, count: length)
    
    leftArray[0] = 1
    for i in 1..<length {
        leftArray[i] = nums[i-1] * leftArray[i-1]
    }
    
    rightArray[length-1] = 1
    for i in stride(from:length-2, through:0, by:-1) {
        rightArray[i] = nums[i + 1] * rightArray[i + 1]
    }
    
    for i in 0..<length {
        result[i] = leftArray[i] * rightArray[i]
    }
    
    return result
}

//Solution Space complexity
func getResultSpaceComplexity(nums: [Int]) -> [Int] {
    let length = nums.count
    var result: [Int] = Array(repeating: 0, count: length)
    
    result[0] = 1
    for i in 1..<length {
        result[i] = nums[i-1] * result[i-1]
    }
    
    var r = 1
    for i in stride(from:length-1, through:0, by:-1) {
        result[i] = result[i] * r
        r *= nums[i]
    }
    
    return result
}

var nums = [1,2,3,4]

let output = productExceptSelf(nums)

print(output)

//: [Next](@next)
