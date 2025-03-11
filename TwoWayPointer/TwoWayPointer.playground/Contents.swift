import UIKit

//====================Segregate 0s and 1s (Geek For Geek)====================
func segregateOAnd1(){
    var arr = [0, 0, 1, 1, 0]
    var start = 0, end = arr.count - 1
    while start<end{
        if arr[start]==0{
            start+=1
        }
        else if arr[end]==1{
            end-=1
        }
        else{
            arr.swapAt(start, end)
        }
    }
    print(arr)
}
//segregateOAnd1()

//====================Two's sum====================
func twossum(){
    let arr = [1, 2, 4, 6, 18, 25], length = arr.count, target = 29
    var start = 0, end = length-1
    var data = (0, 0)
    while start<end{
        if arr[start] + arr[end] == target{
            data = (arr[start], arr[end])
            break
        }
        else if arr[start] + arr[end] > target{
            end-=1
        }
        else{
            start+=1
        }
    }
    print(data)
}
//twossum()


//pair with given difference by binary search
func diffArrayByBinarySearch()->[Int]{
    let arr = [10, 50, 80, 2, 3, 5].sorted(), length = arr.count, diffValue = 45
    var mid = 0, ans:[Int] = []
    for index in 0..<length-1{
        var target = diffValue + arr[index]
        //print(target)
        var start = index, end = length-1
        while start<=end{
            mid = (end-start)/2+start
            if arr[mid] == target{
                ans = [arr[start], arr[end]]
            }
            else if target > arr[mid]{
               start = mid + 1
            }
            else{
                end = mid - 1
            }
        }
        
    }
    return ans
}
//print("Hello", diffArrayByBinarySearch())

func solve(_ A: inout [Int], _ target: inout Int) -> Int {
        A.sort()
        var start = 0, end = 1
        let length = A.count
        //if target is negative value then make it positive
        if target < 0{
            target *= -1
        }
    
        while end<length{
            let value = A[end] - A[start]
            if value == target{
                return 1
            }//Since targte is greater to value that means we want increased value hence increase end
            else if target > value{
                end+=1
            }//Since targte is lesser to value that means we want decrease it's value hence increase start
            else{
                start+=1
            }
            //There may be chance that start becomes end then increase end as end should be always greater to start
            if start==end{
                end+=1
            }
        }
        return 0
    }

var arr = [ -509, -5 ], target = -95173
print(solve(&arr, &target))
