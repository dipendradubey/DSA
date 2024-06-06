import UIKit

var greeting = "Hello, playground"
class Node<T>{
    var value:T
    var next:Node?
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T>{
    private var head:Node<T>?
    private var tail:Node<T>?
    
    func appendAtStart(_ node:Node<T>){
        if head != nil{
            //var temp = node
            node.next = head
            head = node
            
            if node.next === head{
                print("Both are same")
            }else{
                print("Not same")
            }
        }else{
            head = node
        }
    }
    
    func appendAtEnd(_ node:Node<T>){
        if head != nil{
            tail?.next = node
            tail = node
        }else{
            head = node
            tail = node
        }
    }
    
    func showLinkedList(){
        var temp = head
        while temp != nil{
            print(temp?.value)
            temp = temp?.next
        }
    }
}

let linkedList = LinkedList<Int>()
let node1 = Node(value: 10)
let node2 = Node(value: 20)
let node3 = Node(value: 30)
linkedList.appendAtEnd(node1)
linkedList.appendAtEnd(node2)
linkedList.appendAtEnd(node3)
//linkedList.appendAtStart(node3)
//print(linkedList.head?.value, linkedList.head?.next?.value, linkedList.head?.next?.next?.value, linkedList.head?.next?.next?.next?.value)
linkedList.showLinkedList()
