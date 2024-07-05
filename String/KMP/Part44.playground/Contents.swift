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

//Circular pattern matching
//See if given string A is available in circular pattern B

func circularPattern(A:String, B:String)->Int{
    var parentString = B+B
    var arrLPS = Array(repeating: 0, count: A.count)
    getLps(for: Array(A), for: &arrLPS)
    
    return stringMatch(arrLPS: arrLPS, child: A, parent: parentString)
}

func stringMatch(arrLPS:[Int],child:String, parent:String)->Int{
    var first = 0, second = 0
    let m = child.count, n = parent.count
    let arrChild = Array(child), arrParent = Array(parent)
    while second<m && first<n{
        if arrParent[first] == arrChild[second]{
            first+=1
            second+=1
        }else{
            if second == 0{
               first+=1
            }else{
                second = arrLPS[second-1]
            }
        }
    }
    if m==second{
        return 1
    }
    return -1
}

//print(circularPattern(A: "CDEB", B: "ABCD"))

//Leetcode 686 Repeated string match

func repeatedStringMatch(_ a: String, _ b: String) -> Int {
    var temp = a, times = 1
    while temp.count<b.count{
        temp += a
        times+=1
    }
    var arrLPS = Array(repeating: 0, count: b.count)
    getLps(for: Array(b), for: &arrLPS)
    
    if stringMatch(arrLPS: arrLPS, child: b, parent: temp)==1{
        return times
    }
    else if stringMatch(arrLPS: arrLPS, child: b, parent: temp+a)==1{
        return times + 1
    }
    
    return -1
}

print(repeatedStringMatch("a", "aa"))
