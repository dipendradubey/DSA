import UIKit

var greeting = "Help"
func reverseString(_ inputString:String)->String{
    var arrChar = Array(inputString)
    var start = 0, end = arrChar.count - 1
    while start<end{
        arrChar.swapAt(start, end)
        start+=1
        end-=1
    }
    return String(arrChar)
}

func sizeOfString(){
    var arrChar = greeting
    var count = 0
    for _ in arrChar{
        count+=1
    }
    print(count)
}

func checkPalindrome()->Bool{
    var arrChar = Array(greeting)
    var start = 0, end = arrChar.count - 1
    while start<end{
        if arrChar[start] != arrChar[end]{
         return false
        }
        start += 1
        end -= 1
    }
    return true
}
print(checkPalindrome())
//sizeOfString()
//print(sizeOfString())
//print(reverseString(greeting))
