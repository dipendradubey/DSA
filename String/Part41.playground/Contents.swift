import UIKit

//Sliding window problem
//Leetcode qu3
//This solution failed on test last 2 test case
func lengthOfLongestSubstring_timeouterror(_ s: String) -> Int {
    let arrString = Array(s)
    var first = 0, second = 0, length = 0
    var dict:[Character:Bool] = [:]
    while second<s.count{
        while(dict[arrString[second]] != nil){
            dict[arrString[first]] = nil
            first+=1
        }
        dict[arrString[second]] = true
        length = max(length, second-first+1)
        second+=1
    }
    return length
}
func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var start = 0, result = 0
    var dictChar:[Character:Int] = [:]
    for (index, char) in s.enumerated(){
        if let indexFound = dictChar[char], index >= start{
            start = indexFound + 1
        }
        dictChar[char] = index
        result = max(result, index-start+1)
    }
    
    return result
}

//Smallest distinct window
func smallestDistinctWindow(_ str: String) -> Int {
    var arrStr = Array(str)
    var arrCount = Array(repeating: 0, count: 256)
    var arrSet:Set<Character> = []
    for char in str{
        arrSet.insert(char)
    }
    let uniqueElement = arrSet.count
    var length = str.count, diff = uniqueElement
    var second = 0, first = 0
    
    while second<str.count{
        
        //keep expanding untill we get all element
        while diff != 0 && second<str.count{
            let asciivalue = Int (arrStr[second].asciiValue ?? 0)
            if arrCount[asciivalue] == 0{
                diff -= 1
            }
            arrCount[asciivalue] += 1
            second += 1
        }
        length = min(length, second-first)
        
        //As we have got all element then start to increase first until diff != 1
        while diff != 1{
            length = min(length, second-first)
            let asciivalue = Int (arrStr[first].asciiValue ?? 0)
            arrCount[asciivalue] -= 1
            if arrCount[asciivalue] == 0{
                diff += 1
            }
            first += 1
        }
    }
    
    print(arrCount)
    return length
}
//let length = lengthOfLongestSubstring("smallestDistinctWindow")
let smallWindow = smallestDistinctWindow("AABBBCBBAC")
print(smallWindow)
