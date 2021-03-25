//: [Previous](@previous)

import Foundation

/*
 Generate all Permutations of a given String
 
 Input String: ABC
 Output:
 ABC
 ACB
 BAC
 BCA
 CBA
 CAB
    
 */

var input = "ABC"
var output = [String]()
var leftIndex = 0
var rightIndex = input.count - 1

permutate(&input, &output, leftIndex, rightIndex)
print(output)

func permutate(_ str: inout String, _ output: inout [String], _ leftIndex: Int, _ rightIndex: Int) {

    guard leftIndex != rightIndex else {
        output.append(str)
        return
    }
    for i in leftIndex...rightIndex{
        str = swap(str, leftIndex, i)
        permutate(&str, &output, leftIndex+1, rightIndex)
        str = swap(str, leftIndex, i)
    }
}

func swap(_ a: String, _ i: Int, _ j: Int) -> String{
    var temp: Character
    var charArray = a.map { $0 as Character }
    temp = charArray[i]
    charArray[i] = charArray[j]
    charArray[j] = temp
    return String(charArray)
}

//: [Next](@next)


