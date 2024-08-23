import UIKit

//Fibonacci of num
print(fib(4))
func fib(_ n:Int)->Int{
    if n<=1{
        return n
    }
    return fib(n-1)+fib(n-2)
}

