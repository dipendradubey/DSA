import UIKit

//Time complexity: o(n), space complexity: o(n)
func trappingRainWater()->Int{
    let arr = [4, 2, 0, 5, 2, 6, 2, 3]
    let length = arr.count
    var arrMaxLeft = Array(repeating: 0, count: length)
    var arrMaxRight = Array(repeating: 0, count: length)
    var maxLeft = arr[0], maxRight = arr[length-1]
    for index in 1...length-1{
        arrMaxLeft[index] = max(arr[index-1], maxLeft)
        maxLeft = max(maxLeft, arr[index])
    }
    print(arrMaxLeft)
    for index in stride(from: length-2, through: 0, by: -1){
        arrMaxRight[index] = max(arr[index+1], maxRight)
        maxRight = max(maxRight, arr[index])
    }
    print(arrMaxRight)
    var sum=0
    for index in 0...length-1{
        let value = min(arrMaxLeft[index], arrMaxRight[index]) - arr[index]
        if value > 0{
            sum += value
        }
    }
    return sum
}
print(trappingRainWater())

func trappingRainWaterSimplified()->Int{
    let arr = [4, 2, 0, 5, 2, 6, 2, 3]
    let length = arr.count
    var maxLeft = arr[0], maxRight = arr[length-1]
    var maxValue = arr[0], maxIndex = 0
    for index in 0...length-1{
        
    }
    print(arrMaxLeft)
    for index in stride(from: length-2, through: 0, by: -1){
        arrMaxRight[index] = max(arr[index+1], maxRight)
        maxRight = max(maxRight, arr[index])
    }
    print(arrMaxRight)
    var sum=0
    for index in 0...length-1{
        let value = min(arrMaxLeft[index], arrMaxRight[index]) - arr[index]
        if value > 0{
            sum += value
        }
    }
    return sum
}
