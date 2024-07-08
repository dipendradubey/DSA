import UIKit

var greeting = "Hello, playground"

//Zero subarray count
func subArrayCount(_ arr:[Int])->Int{
    var result = 0
    var prefixSum = 0
    var prefixDict:[Int:Int] = [0:1]
    for element in arr{
        prefixSum+=element
        if let data = prefixDict[prefixSum]{
            result += data
            prefixDict[prefixSum] = data + 1
        }else{
            prefixDict[prefixSum] = 1
        }
    }
    print(prefixDict)
    return result
}
print(subArrayCount([1, 2, -2, 3, -3, 5]))

//Subarray sum equals k leetcode 560
func subArraySumEqual(_ arr:[Int], _ k:Int)->Int{
    var result = 0
    var prefixSum = 0
    var prefixDict:[Int:Int] = [0:1]
    for element in arr{
        prefixSum+=element
        let search = prefixSum - k
        if let data = prefixDict[search]{
            result += data
        }
        if let data = prefixDict[prefixSum]{
            prefixDict[prefixSum] = data + 1
        }
        else{
            prefixDict[prefixSum] = 1
        }
        
    }
    return result
}

print(subArraySumEqual([2, 1, 7, -4, 2, 1, 3, 4, -15, 2, -3, 6], 6))
