import UIKit

//Leetcode 409
func longestPalindrome(_ s: String) -> Int {
    var arrLowerChar = Array(repeating: 0, count: 26)
    var arrUpperChar = Array(repeating: 0, count: 26)
    var arrChar = Array(s)
    for char in arrChar{
        let asciivalue = Int(char.asciiValue ?? 0)
        if asciivalue >= 65 && asciivalue <= 90{
            let index = asciivalue - 65
            arrUpperChar[index]+=1
        }
        else if asciivalue >= 97 && asciivalue <= 122{
            let index = asciivalue - 97
            arrLowerChar[index]+=1
        }
    }
    print(arrLowerChar)
    var count = 0
    var oddCount = 0
    for index in 0...25{
        if arrUpperChar[index].isMultiple(of: 2){
            count+=arrUpperChar[index]
        }else{
            count+=(arrUpperChar[index]-1)
            oddCount = 1
        }
        if arrLowerChar[index].isMultiple(of: 2){
            count+=arrLowerChar[index]
        }else{
            count+=(arrLowerChar[index]-1)
            oddCount = 1
        }
    }
    count+=oddCount
    return count
}

print(longestPalindrome("abccccdd"))
