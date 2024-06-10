import UIKit

//Leetcode2785
func sortVowels(_ s: String) -> String {
    var arrLowercase = Array(repeating: 0, count: 26)
    var arrUpperrcase = Array(repeating: 0, count: 26)
    var arrString = Array(s)
    
    for index in 0..<arrString.count{
        if arrString[index] == "A" || arrString[index] == "E" || arrString[index] == "I" || arrString[index] == "O" || arrString[index] == "U"{
            let asciiValue = Int(arrString[index].asciiValue ?? 0)
            let uindex = asciiValue - 65
            arrUpperrcase[uindex]+=1
            arrString[index] = "#"
        }
        else if arrString[index] == "a" || arrString[index] == "e" || arrString[index] == "i" || arrString[index] == "o" || arrString[index] == "u"{
            let asciiValue = Int(arrString[index].asciiValue ?? 0)
            let lindex = asciiValue - 97
            arrLowercase[lindex]+=1
            arrString[index] = "#"
        }
    }
    print(arrString)
    
    
    return "a"
}
sortVowels("Aeetcode")
