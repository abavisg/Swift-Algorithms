//: [Previous](@previous)

import UIKit

/*
 Sales by Match
 
 There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching
 colors there are.
 
 Example 1
 Input:
 ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
 
 Output (Number of pairs): 3
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var pairs = 0
    var socksToMatch:[Int] = [Int]()
    for i in 0..<n {
        let curColor = ar[i]
        if let index = socksToMatch.firstIndex(of: curColor) {
            pairs += 1
            socksToMatch.remove(at: index)
        }else{
            socksToMatch.append(curColor)
        }
    }
    return pairs;
}

var ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
var numberOfPairs = sockMerchant(n: ar.count, ar: ar)

print(numberOfPairs)


//: [Next](@next)
