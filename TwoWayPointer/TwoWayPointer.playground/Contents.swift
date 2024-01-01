import UIKit

//Segregate 0s and 1s (Geek For Geek)
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
segregateOAnd1()
