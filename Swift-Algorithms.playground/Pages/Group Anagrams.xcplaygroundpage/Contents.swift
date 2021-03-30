//: [Previous](@previous)

import Foundation

/*
 Group Anagrams
 
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.
 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
 
 Example 2:
 Input: strs = [""]
 Output: [[""]]
 
 Example 3:
 Input: strs = ["a"]
 Output: [["a"]]

 */
//Example 1:
let input1 = ["eat","tea","tan","ate","nat","bat"]
print("EXAMPLE 1")
let output1 = groupAnagrams(input1)
print("output: \(output1)")
print("---------")

//Example 2:
let input2 = [""]
print("EXAMPLE 2")
let output2 = groupAnagrams(input2)
print("output: \(output2)")
print("---------")

//Example 3:
let input3 = ["a"]
print("EXAMPLE 3")
let output3 = groupAnagrams(input3)
print("output: \(output3)")
print("---------")

func groupAnagrams(_ strs: [String]) -> [[String]] {
    guard strs.count != 0 else {
        return []
    }
    var ans = [String: [String]]()
    for s in strs {
        var ca = Array(s)
        ca.sort()
        if ans[String(ca)] == nil {
            ans[String(ca)] = [String]()
        }
        ans[String(ca)]?.append(s)
    }
    return Array(ans.values)
}

//: [Next](@next)
