import UIKit

var greeting = "Hello, playground"

func print1ToN(_ num:Int, _ n:Int){
    if num==n{
        print(num)
        return
    }
    print(num)
    print1ToN(num+1, n)
}

//print1ToN(1, 10)
func print1ToNSingleArg(_ n:Int){
    print("============")
    if n==1{
        print(n)
        return
    }
    print1ToNSingleArg(n-1)
    print(n)
}
// print1ToNSingleArg(5)

func printEvenNo(_ num:Int, _ n:Int){
    if num>n{
        return
    }
    printEvenNo(num+2, n)
    print(num)
    
}
//printEvenNo(2, 10)


func printEvenNoSingleArg(_ n:Int){
    if n<2{
        return
    }
    printEvenNoSingleArg(n-2)
    print(n)
    
}
var n = 19
n = n.isMultiple(of: 2) ? n : n-1
printEvenNoSingleArg(n)
