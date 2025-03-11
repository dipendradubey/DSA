import UIKit

var greeting = "Hello, playground"
func lps(_ s:String)->Int{
    let count = s.count
    let arrChar = Array(s)
    var lps = Array(repeating: 0, count: count)
    var prefix = 0, suffix = 1
    while suffix<count{
        if arrChar[prefix] == arrChar[suffix]{
            lps[suffix] = prefix+1
            prefix+=1
            suffix+=1
        }else{
            if prefix == 0{
                lps[suffix] = 0
                suffix+=1
            }else{
                prefix = lps[prefix-1]
            }
        }
    }
    
    print(lps)
    return lps[count-1]
}
print(lps("abcabdabcabdabdab"))

