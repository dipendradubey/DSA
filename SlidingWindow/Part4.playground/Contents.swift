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
//print(count)

//Leetcode problem 76 Minimum Window Substring
func minWindow(_ s: String, _ t: String) -> String {
    var  dict:[Character:Int] = [:]
    var total = t.count, subStrcount = Int.max, index = -1
    var start = 0, end = 0
    let arrStr = Array(s), n = s.count
    var subString = ""
    for char in t{
        let count = (dict[char] ?? 0) + 1
        dict[char] = count
    }
    while end < n{
        
        let char = arrStr[end]
        let count = (dict[char] ?? 0) - 1
        dict[char] = count
        if count >= 0{
            total -= 1
        }
        while total == 0 && start <= end{
            
            if subStrcount > end-start+1{
                index = start
                subStrcount = end-start+1
            }
            let char = arrStr[start]
            let count = (dict[char] ?? 0) + 1
            dict[char] = count
            if count > 0{
                total += 1
            }
            start += 1
        }
        
        end+=1
    }
    
    if index != -1
    {
        for i in index...index+subStrcount-1{
            subString+=String(arrStr[i])
        }
    }
    
    return subString
}

//print("====Answer is===")
print(minWindow("bbaa", "aba"))
