import UIKit

//Fibonacci of num
print(fib(4))
func fib(_ n:Int)->Int{
    if n<=1{
        return n
    }
    return fib(n-1)+fib(n-2)
}

//Leetcode 40
//This code shows time limit exceed problem
func climbStairs(_ n: Int) -> Int {
    if n<=1{
        return 1
    }
    return climbStairs(n-1) + climbStairs(n-2)
}

//Homework
func climbStairsForLoop(_ n: Int) -> Int {
    var totalStep = 1
    
    for index in stride(from: 2, through: n, by: 1){
        totalStep += (index - 1)
    }
    return totalStep
}

print(gcdOfNum(18, 48))
func gcdOfNum(_ num1:Int, _ num2:Int)->Int{
    if num2 == 0{
        return num1
    }
    return gcdOfNum(num2, num1 % num2)
}

