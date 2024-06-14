import UIKit

var greeting = "Hello, playground"

//Leetcode 13
func romanToInt(_ s: String) -> Int {
    var sum = 0
    var arrChar = Array(s)
    let count = s.count
    for index in 0..<count-1{
        let current = intValue(for: arrChar[index])
        let next = intValue(for: arrChar[index+1])
        
        if next > current{
            sum -= current
        }else{
            sum += current
        }
    }
    sum += intValue(for: arrChar[count - 1])
    return sum
    
    func intValue(for char:Character)->Int{
        switch char {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        default:
            return 1000
        }
    }
}

//Number to Roman
//Leetcode 12
//Create multiple function that returns for 1to9, 10to90, 100to900, 1000to4000


