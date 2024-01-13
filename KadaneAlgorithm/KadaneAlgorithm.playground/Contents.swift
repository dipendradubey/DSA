import UIKit

let arr = [6, 4, 5, -3, 2, 8]
//========================Prefixsum========================
func prefixsum(){
    let length = arr.count
    var arrPrefix = Array(repeating: 0, count: length)
    arrPrefix[0] = arr[0]
    for index in 1..<length{
        arrPrefix[index] = arrPrefix[index-1]+arr[index]
    }
    print(arrPrefix)
}
prefixsum()
//========================Suffixsum========================
func suffixsum(){
    let length = arr.count
    var arrSuffix = Array(repeating: 0, count: length)
    arrSuffix[length-1] = arr[length-1]
    for index in stride(from: length-2, through: 0, by: -1){
        arrSuffix[index] = arrSuffix[index+1]+arr[index]
    }
    print(arrSuffix)
}
suffixsum()

//check if subarray of 2 elements are equal
func isSumOfSubArrayEqual()->Bool{
    let arr = [3, 4, -2, 5, 8, 20, -10, 8]
    let sum = arr.reduce(0, +)
    var prefixSum = 0
    for index in 0..<arr.count-1{
        prefixSum += arr[index]
        let rightArrsum = sum - prefixSum
        if prefixSum == rightArrsum{
            return true
        }
    }
    return false
}
print(isSumOfSubArrayEqual())

//Find max of sum of subarray by using Kadane's algo
func maxOfSumArray()->Int{
    let arr = [3, 4, -2, 5, 8, 20, -10, 8]
    var sum = -100000
    var prefixSum = 0
    for index in 0..<arr.count-1{
        prefixSum += arr[index]
        sum = max(prefixSum, sum)
        if prefixSum < 0{
            prefixSum = 0
        }
    }
    return sum
}
print(maxOfSumArray())

//Max difference b/w two elements
//Here used extra array so auxiliary space is o(n)
func maxDifferenceMethod1(){
    let arr = [5, 8, 12, 2, 3, 7, 4]
    let length = arr.count
    var arrSuffix = Array(repeating: arr[length-1], count: length)
    var maxSuff = arr[length-1]
    for index in stride(from: length - 2, through: 0, by: -1){
        maxSuff = max(arr[index], maxSuff)
        arrSuffix[index] = maxSuff
    }
    
    var maxDiff = Int.min
    for index in (0..<length-1).reversed(){
        let value = arrSuffix[index+1] - arr[index]
        maxDiff = max(value, maxDiff)
    }
    print(maxDiff)
}
maxDifferenceMethod1()

//Here time complexity is o(n)
func maxDifferenceMethod2(){
    let arr = [5, 8, 12, 2, 3, 7, 4]
    let length = arr.count
    var maxSuff = arr[length-1], maxDiff = Int.min
    for index in stride(from: length - 2, through: 0, by: -1){
        let value = maxSuff - arr[index]
        maxDiff = max(maxDiff, value)
        maxSuff = max(maxSuff, arr[index])
    }
   print(maxDiff)
}
maxDifferenceMethod2()

//Maximum prefix sum for a given range (geek for geeks)
func maxPrefixForGivenSum(){
    let arr = [-1, 2, 3, -5]
    let L1 = 1, R1 = 3
    let length = arr.count
    var maxPrefix = arr[L1], maxSum = Int.min
    for index in L1+1...R1{
        maxPrefix += arr[index]
        maxSum = max(maxSum, maxPrefix)
    }
    print(maxSum)
}
maxPrefixForGivenSum()

//Equal Sums(Geek for Geeks)
func equalSum()->[Int]{
    let arr = [3, 2, 1, 5, 7, 8]
    //This was added tho handle edge cases
    if (arr.count==1){
        return [arr[0], 2, 2]
    }
    let sum = arr.reduce(0,+)
    var sumSuffix = 0, diff = Int.max, ansIndex = -1, firstArr = 0
    for index in 0..<arr.count-1{
        var isValuePositive = 1
        sumSuffix+=arr[index]
        var value = sum - 2*sumSuffix
        if value<0{
            value *= -1
            isValuePositive = 2
        }
        if value<diff{
            ansIndex = index+2
            firstArr = isValuePositive
        }
        diff = min(diff, value)
    }
    return [diff, ansIndex, firstArr]
}
print(equalSum())
