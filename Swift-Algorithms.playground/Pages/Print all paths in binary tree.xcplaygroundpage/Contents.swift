//: [Previous](@previous)

/*
 Print all paths in binary tree
 
 You have a binary tree:
     A
    B C
   D E F
 
 Print all paths of the tree from root to leaf

 Output:
 ABD
 ACE
 ACF
*/

import Foundation

class Node {
    init(value: String){
        self.value = value
    }
 
    var value: String
    var childNodes  = [Node]()
    
    var isLeafNode: Bool {
        return childNodes.count > 0 ? false : true
    }
}

var root = Node(value: "A")
var bNode = Node(value: "B")
var cNode = Node(value: "C")
var dNode = Node(value: "D")
var eNode = Node(value: "E")
var fNode = Node(value: "F")
bNode.childNodes = [dNode]
cNode.childNodes = [eNode, fNode]
root.childNodes = [bNode, cNode]

var path = [String]()
printPaths(node: root, path: &path)

func printPaths(node: Node?, path: inout [String]) {
    guard let node = node else{
        return
    }
    path.append(node.value)
    if node.isLeafNode {
        print(path)
    }
    for n in node.childNodes {
        printPaths(node: n, path: &path)
    }
    path.removeLast()
}
