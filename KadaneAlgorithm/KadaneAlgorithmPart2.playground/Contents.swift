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

//Time complexity: o(n), space complexity: o(1)
func trappingRainWaterSimplified()->Int{
    let arr = [4, 2, 0, 5, 2, 6, 2, 3]
    let length = arr.count
    var maxLeft = 0, maxRight = 0
    var topValue = arr[0], topIndex = 0
    for index in 0...length-1{
        if arr[index]>topValue{
            topIndex = index
            topValue = arr[index]
        }
    }
    print(topIndex)
    var sum=0
    for index in 0..<topIndex{
        let value = maxLeft - arr[index]
        if value > 0{
            sum += value
        }
        maxLeft = max(maxLeft, arr[index])
    }
    for index in stride(from: length-1, to: topIndex, by: -1){
        let value = maxRight - arr[index]
        if value > 0{
            sum += value
        }
        maxRight = max(maxRight, arr[index])
    }
    return sum
}
print(trappingRainWaterSimplified())

func threeSum()->Int{
    var arr = [1, 4, 6, 8, 10, 45]
    arr.sort()
    let target = 24, length = arr.count
    for index in 0..<length{
        let value = target - arr[index]
        var start = index + 1, end = length - 1
        while start<end{
            let sumValue = arr[start]+arr[end]
            if sumValue==value{
                return 1
            }
            else if sumValue>value{
                end-=1
            }
            else{
                start+=1
            }
        }
    }
    return 0
}
print(threeSum())
