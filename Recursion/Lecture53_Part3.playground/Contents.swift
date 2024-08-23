import UIKit
//Factorial
print(fact(5))
func fact(_ num:Int)->Int{
    
    if num==0{
        return 1
    }
    return num*fact(num-1)
}

//Sum of n natural no
print(sumOfNum(5))
func sumOfNum(_ num:Int)->Int{
    if num==1{
        return num
    }
    return num+sumOfNum(num-1)
    
}

//power of num to n times
print(powOfNum(10,0))
func powOfNum(_ num:Int, _ n:Int)->Int{
    if n==1 || num==0{
        return num
    }
    print("fn is callled")
    return num*powOfNum(num,n-1)
    
}

print(squareSum(3))
//sum of sqaure of number
func squareSum(_ n:Int)->Int{
    if n==1{
        return 1
    }
    return n*n + squareSum(n-1)
}
