import UIKit

var greeting = "Hello, playground"

//Geek for geeks
//min charater to be added at front to make string palindrome
func minChar(_ str:String)->Int{
    var arrStr = Array(str)
    var first = 0, last = str.count - 1
    while first<last{
        let temp = arrStr[first]
        arrStr[first] = arrStr[last]
        arrStr[last] = temp
        first+=1
        last-=1
    }
    arrStr = Array(str) + ["#"] + arrStr
    print(arrStr)
    return 0
}



print(greeting)
minChar("RAMS")
