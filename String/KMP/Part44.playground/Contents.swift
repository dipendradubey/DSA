import UIKit

var greeting = "Hello"

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
    var arrLPS = Array(repeating: 0, count: arrStr.count)
    getLps(for: arrStr, for: &arrLPS)
    print("lps table \(arrLPS)")
    //print("arrstring \(arrStr)")
    return str.count - (arrLPS.last ?? 0)
}


func getLps(for arr:[Character], for arrLPS:inout [Int]){
    var pre = 0, suf = 1
    while suf<arrLPS.count{
        if arr[pre] == arr[suf]{
            arrLPS[suf] = pre+1
            suf+=1
            pre+=1
        }else{
            if pre==0{
                arrLPS[suf] = 0
                suf+=1
            }else{
                pre = arrLPS[pre-1]
            }
        }
    }
}

print(minChar("ROORSP"))
///print(greeting)



print (minChar("ABAC"))
