//: [Previous](@previous)

import Foundation

/*
 Remove Duplicate Characters in a given String
 
 Input String: tree traversal
 Output:
 tre avsl
    
 */


var input = "tree traversal"

let output = removeDuplicates(input)
print(output)

func removeDuplicates(_ str: String) -> String {
    var output = ""
    var set = Set<Character>()
    for char in str {
        if set.contains(char) != true {
            set.insert(char)
            output = output + String(char)
        }
    }
    return output
}

//: [Next](@next)


