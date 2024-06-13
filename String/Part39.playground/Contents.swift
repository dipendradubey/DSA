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
    var arrVowelString:[Character] = []
    for index in 0...25{
        if arrUpperrcase[index] != 0{
            let asciivalue = 65+index
            let char = Character(UnicodeScalar(asciivalue)!)
            arrVowelString += Array(repeating: char, count: arrUpperrcase[index])
        }
    }
    
    for index in 0...25{
        if arrLowercase[index] != 0{
            let asciivalue = 97+index
            let char = Character(UnicodeScalar(asciivalue)!)
            arrVowelString += Array(repeating: char, count: arrLowercase[index])
        }
    }
    
    var vowelIndex = 0
    for index in 0..<arrString.count{
        if arrString[index] == "#"{
            arrString[index] = arrVowelString[vowelIndex]
            vowelIndex += 1
        }
    }
    return String(arrString)
}
sortVowels("Leetcode")
