import UIKit

var greeting = "Hello, playground"

func strStr_timemn(_ haystack: String, _ needle: String) -> Int {
    let n = haystack.count
    let m = needle.count
    if n==m && haystack==needle{
        return 0
    }
    
    var arrHayStack = Array(haystack)
    var arrNeedleStack = Array(needle)
    var first = 0, second = 0
    
    for i in 0..<n-m{
        first = i; second = 0
        while second<m{
            if arrHayStack[first] == arrNeedleStack[second]{
                first+=1
                second+=1
            }else{
                break
            }
        }
        if second == m{
            return first-second
        }
    }
    
    return -1
}

func strStr(_ haystack: String, _ needle: String) -> Int {
    let n = haystack.count
    let m = needle.count
    
    var arrHayStack = Array(haystack)
    var arrNeedleStack = Array(needle)
    var first = 0, second = 0
    var arrLPS:[Int] = Array(repeating: 0, count: needle.count)
    getLPS(&arrLPS, arrNeedleStack)
    print(arrLPS)
    
    while first<n && second<m{
        if arrHayStack[]
        
    }
    
    return -1
}

func getLPS(
    _ arrLPS: inout [Int],
    _ arrNeedleStack:[Character]
){
    var pre = 0, suf = 1
    while suf<arrNeedleStack.count{
        if arrNeedleStack[pre] == arrNeedleStack[suf]{
            arrLPS[suf] = pre+1
            suf+=1
            pre+=1
        }else{
            if pre == 0{
                arrLPS[suf] = 0
                suf+=1
            }else{
                pre = arrLPS[suf-1]
            }
        }
    }
}

print(strStr("abcdef", "abca"))
print("hello")
