//: [Previous](@previous)

import Foundation

/*
 Ransom note
 
 Harold is a kidnapper who wrote a ransom note, but now he is worried it will be traced back to him through his handwriting. He found a magazine and wants to know if he can cut out whole words from it and use them to create an untraceable replica of his ransom note. The words in his note are case-sensitive and he must use only whole words available in the magazine. He cannot use substrings or concatenation to create the words he needs.

 Given the words in the magazine and the words in the ransom note, print Yes if he can replicate his ransom note exactly using whole words from the magazine; otherwise, print No.
 
 Example 1
 Input:
 magazine = ["give", "me", "one", "grand", "today", "night"]
 note = ["give", "one", "grand", "today"]
 
 Output: Yes
 
 Example 2
 Input:
 magazine = ["two", "times", "three", "is", "not", "four"]
 note = ["two", "times", "two", "is", "four"]
 
 Output: No
 */

//Example 1
//let magazine = ["give", "me", "one", "grand", "today", "night"]
//let note = ["give", "one", "grand", "today"]

//Example 2
let magazine = ["two", "times", "three", "is", "not", "four"]
let note = ["two", "times", "two", "is", "four"]

checkMagazine(magazine, note)

func checkMagazine(_ magazine: [String], _ note: [String]) -> Void {
    var foundInstances = [String: Int]()
    var canReplicate = true
    for i in magazine {
        if let count = foundInstances[i] {
            foundInstances[i] = count + 1
        } else {
            foundInstances[i] = 1
        }
    }
    for i in note {
        if let count = foundInstances[i] {
            foundInstances[i] = count - 1
        } else {
            foundInstances[i] = -1
        }
    }
    for (word, count) in foundInstances {
        if count < 0 {
            canReplicate = false
            break
        }
    }
    print(canReplicate ? "Yes" : "No")
}

//: [Next](@next)


