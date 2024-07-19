import UIKit

//length of longest subarray with atmost k frequency
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

print(maxSubarrayLength([5,5,5,5,5,5,5], 4))
