import UIKit

//Leet code 209 problem
func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var sum = 0, start = 0, count = Int.max
        for end in 0..<(nums.count){
            sum+=nums[end]
            while sum>=target && start<=end{
                count = min(count, end-start+1)
                sum-=nums[start]
                start+=1
            }
        }
        return count == Int.max ? 0 : count
    }

let count = minSubArrayLen(11, [1,1,1,1,1,1,1,1])
print(count)
