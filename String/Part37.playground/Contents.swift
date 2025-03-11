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
    
    var arrChar = Array(s1)
    for _ in 1...2{
        rotateClockWise()
    }
    
    func rotateClockWise(){
        let tempChar = arrChar[count-1]
        for index in stride(from: count-2, through: 0, by: -1){
            arrChar[index+1] = arrChar[index]
        }
        arrChar[0] = tempChar
        print(arrChar)
    }
    if String(arrChar) == s2{
        return true
    }
    
    arrChar = Array(s1)
    for _ in 1...2{
        rotateAntiClockWise()
    }
    func rotateAntiClockWise(){
        let tempChar = arrChar[0]
        for index in stride(from: 0, through: count-2, by: 1){
            arrChar[index] = arrChar[index+1]
        }
        arrChar[count-1] = tempChar
        print(arrChar)
    }
    
    print(String(arrChar), s2)
    if String(arrChar) == s2{
        return true
    }
    return false
}

//print (checkString("ram", "mra"))
//Check pangram i.e all alphabet are into string or not

func checkPangram()->Bool{
    let data = "thequickbrownfoxjumpsoverthelazydog"
    var arrFound = Array(repeating: 0, count: 26)
    
    for char in data{
        let index = Int(char.asciiValue ?? 0)-97
        print(index)
        if index >= 0 && index <= 25{
            arrFound[index] = 1
        }
    }
    print (arrFound)
    for dataValue in arrFound{
        if dataValue == 0{
            return false
        }
    }
    return true
}

//Sort a string
func sortString(){
    let x = "gddffaaeeffhhe"
    var arrCount = Array(repeating: 0, count: 26)
    for char in x{
        let index = Int(char.asciiValue ?? 0) - 97
        arrCount[index] += 1
    }
    var string = ""
    for index in 0...25{
        if arrCount[index] == 0 {continue}
        string += String(Array(repeating: Character(UnicodeScalar(97+index)!), count: arrCount[index]))
    }
    print(arrCount)
    print(string)
}
sortString()
