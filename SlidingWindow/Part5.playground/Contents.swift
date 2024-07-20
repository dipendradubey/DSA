import UIKit


//length of longest subarray with atmost k frequency (leetcode 2958)
func maxSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
    var dictCount:[Int:Int] = [:]
    var start = 0, end = 0, length = 0
    while end<nums.count{
        var count = (dictCount[nums[end]] ?? 0) + 1
        dictCount[nums[end]] = count
        
        //We found element whose count is greater than k hence slide the move start
        while count > k{
            //As we are moving start hence reduce the existing start count
            let startcount = (dictCount[nums[start]] ?? 0) - 1
            dictCount[nums[start]] = startcount
            start+=1
            count = dictCount[nums[end]] ?? 0
        }
        
        length = max(end-start+1, length)
        end+=1
    }
    return length
}

//count subarray where max element appears at least k times (leetcode 2962)
func countSubarrays(_ nums: [Int], _ k: Int) -> Int {
    var start=0,end=0, maxEle = 0, total=0, count = 0
    let n = nums.count
    for num in nums{
        maxEle = max(maxEle, num)
    }
    while end<n{
        if nums[end]==maxEle{
            count+=1
        }
        //Since we got element hence reduce window as we need to count those
        //subarray as well
        while count==k{
            //e.g if we get the array when end=5, and end=8 then we can get 8-5=3
            //subarray
            total+=(n-end)
            //As we are moving start & if we found the maxelement then we require
            //to subtract from count
            if nums[start]==maxEle{
                count-=1
            }
            start+=1
        }
        end+=1
    }
    
    return total
}
//print(countSubarrays([1,3,2,3,3], 2))
//Leetcode992. Subarrays with K Different Integers
func subarraysWithKDistinct(_ nums: [Int], _ k: Int) -> Int {
    let n = nums.count
    let minKDistinctSubArray = subarraysWithMinKDistinct(nums, k, n: n)
    let minK_1DistinctSubArray = subarraysWithMinKDistinct(nums, k+1, n: n)
    return minKDistinctSubArray - minK_1DistinctSubArray
}



func subarraysWithMinKDistinct(_ nums: [Int], _ k: Int, n:Int) -> Int {
    
    var start=0, end=0, count=0, total=0
    var dictCount:[Int:Int]=[:]
    while end<n{
        var numCount = (dictCount[nums[end]] ?? 0) + 1
        if numCount == 1{
            count+=1
        }
        while count == k && start<=end{
            total+=(n-end)
            let startCount = (dictCount[nums[start]] ?? 0) - 1
            dictCount[nums[start]] = startCount
            if startCount==0{
                count-=1
            }
            start+=1
        }
        end+=1
    }
    return total
}

print(subarraysWithKDistinct([1,2,1,2,3], 2))
