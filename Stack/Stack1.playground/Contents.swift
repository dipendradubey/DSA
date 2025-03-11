import UIKit

protocol Stack{
    associatedtype Item
    //Insert element at top
    mutating func push(_ item:Item)
    
    //Remove element from top
    mutating func pop()
    
    //Get last item
    mutating func peek()->Item?
    
    //Get size
    func getSize()->Int?
    
    //Check if array is empty
    func isEmpty()->Bool
}


struct MyStack<T>:Stack{
    typealias Item = T
    var arrItems:[Item] = []
    
    mutating func push(_ item: T) {
        arrItems.append(item)
    }
    
    mutating func pop() {
        arrItems.popLast()
    }
    
    mutating func peek() -> T? {
        arrItems.last
    }
    
    func getSize() -> Int? {
        arrItems.count
    }
    
    func isEmpty() -> Bool {
        arrItems.isEmpty
    }
    
    func showItems(){
        print(arrItems)
    }
}

var stack = MyStack<Int>(arrItems: [])
stack.push(1)
stack.push(2)
//stack.showItems()
stack.push(3)
stack.push(4)
stack.pop()
print(stack.peek())
