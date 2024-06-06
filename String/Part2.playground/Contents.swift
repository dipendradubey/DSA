import UIKit

func updateIPAdress()
{
    var greeting = "Hello.playground"
    var arrChar = Array(greeting)
    var data = ""
    for char in arrChar{
        if char == "."{
            data += "[.]"
        }else{
            data += String(char)
        }
    }
    print(data)
}

//Rotate string s1 at 2 times either clockwise or anticlockwise & see if it's equal to s2
func checkString(_ s1:String, _ s2:String)->Bool{
    let count = s1.count
    if count != s2.count{return false}
    
    rotateClockWise()
    
    func rotateClockWise(){
        var arrChar = Array(s1)
        let tempChar = arrChar[count-1]
        for index in stride(from: count-2, to: 0, by: -1){
            arrChar[index+1] = arrChar[index]
        }
        arrChar[0] = tempChar
        print(s1)
    }
    return true
}

checkString("ram", "mar")


