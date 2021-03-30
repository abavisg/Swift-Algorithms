//: [Previous](@previous)

import Foundation

/*
 Reverse Doubly Linked List
 
 Given the pointer to the head node of a doubly linked list, reverse the order of the nodes in place. That is, change the next and prev pointers of the nodes so that the direction of the list is reversed. Return a reference to the head node of the reversed list.

 Note: The head node might be NULL to indicate that the list is empty.
 
 The initial doubly linked list is: 1 <-> 2 <-> 3 <-> 4

 The reversed doubly linked list is: 4 <-> 3 <-> 2 <-> 1
 
 */

final class DoublyLinkedListNode {
    var data: Int
    var next: DoublyLinkedListNode?
    weak var prev: DoublyLinkedListNode?

    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class DoublyLinkedList {
    var head: DoublyLinkedListNode?
    var tail: DoublyLinkedListNode?

    public init() {}

    public func insertNode(nodeData: Int) {
        self.insertNode(node: DoublyLinkedListNode(nodeData: nodeData))
    }

    private func insertNode(node: DoublyLinkedListNode) {
        if let tail = tail {
            tail.next = node
            node.prev = tail
        } else {
            head = node
        }

        tail = node
    }
}

func printDoublyLinkedList(_ head: DoublyLinkedListNode?) {
    var node = head
    while node != nil {
        print(String(node!.data))
        node = node!.next
    }
}

var list = DoublyLinkedList()
list.insertNode(nodeData: 1)
list.insertNode(nodeData: 2)
list.insertNode(nodeData: 3)
list.insertNode(nodeData: 4)

func reverse(_ head: DoublyLinkedListNode?) -> DoublyLinkedListNode? {
    var newHead = head
    var curr = head
    while let itr = curr {
        let temp = curr?.next
        curr?.next = curr?.prev
        curr?.prev = temp
        newHead = itr
        curr = temp
    }
    return newHead
}

print("BEFORE REVERSING")
printDoublyLinkedList(list.head)

let newHead = reverse(list.head!)

print("AFTER REVERSING")
printDoublyLinkedList(newHead)

//: [Next](@next)
