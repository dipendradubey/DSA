import UIKit

var greeting = "Hello, playground"

func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
    var total = 0
    var remDict:[Int:Int] = [0:1]
    var prefixSum = 0, rem = 0
    for element in nums{
        prefixSum += element
        rem = prefixSum%k
        
        //if rem is - value then make it + after adding k
        if rem < 0{
            rem = k+rem
        }
        if let data = remDict[rem]{
            total += data
            remDict[rem] = data + 1
        }else{
            remDict[rem] = 1
        }
    }
    
    return total
}

func subarraysProductBruteForce(lesserto k: Double, _ array: [Int]) -> Int {
    let n = array.count
    print("array count =\(n)")
    var count = 0
    var product:Double = 1
    for i in stride(from: 0, through: n-1, by: 1){
        product = 1
        for j in stride(from: i, through: n-1, by: 1){
            product *= Double(array[j])
            if product < k{
                count += 1
            }
            if i==0 && j==19{
                print("product = \(product)")
            }
        }
    }
   
    return count
}

func numSubarrayProductLessThanK(_ array: [Int], _ k: Int) -> Int {
        let n = array.count
         var count = 0
         var product = 1, start = 0, end = 0
         while end < n{
           product *= array[end]
            while product>=k && start<=end{
                product/=array[start]
                start+=1
            }
            count += end-start+1
            end+=1
        }
        return count
    }

let array = [4,32,23,1,11,21,8,3,12,21,33,5,14,11,9,14,4,27,5,7,7,14,13,9,17,10,3,4,17,31,7,19,4,7,20,5,4,3,24,30,9,11,23,16,7,21,23,22,12,20,8,20,18,11,5,8,21,5,11,31,28,21,13,21,22,3,2,1,32,8,8,27,4,26,13,14,4,15,6,10,28,15,18,20,29,1,1,12,5,18,10,9,5,13,1,2,7,3,23,26,3,4,13,9,32,32,31,26,19,8,7,29,16,21,28,14,18,5]
print("Hello....")
print(subarraysProductBruteForce(lesserto: 9931, array))
//print(subarraysDivByK([5], 9))



