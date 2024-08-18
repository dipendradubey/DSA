import UIKit

print(fact(5))

func fact(_ num:Int)->Int{
    
    if num==0{
        return 1
    }
    return num*fact(num-1)
}
