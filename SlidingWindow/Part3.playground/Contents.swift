import UIKit

var greeting = "Hello, playground"

func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
    var total = 0
    var remDict:[Int:Int] = [0:1]
    var prefixSum = 0, rem = 0
    for element in nums{
        prefixSum += element
        rem = prefixSum%k
        
        //if rem is - value then make it + after adding k
        if rem < 0{
            rem = k+rem
        }
        if let data = remDict[rem]{
            total += data
            remDict[rem] = data + 1
        }else{
            remDict[rem] = 1
        }
    }
    
    return total
}

print(subarraysDivByK([5], 9))
