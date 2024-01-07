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
