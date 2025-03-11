import UIKit

func greetBirthDay(_ day:Int){
    if day==0{
        print("Happy Birthday")
        return
    }
    print("Birthday in \(day) day(s)")
    greetBirthDay(day-1)
}
greetBirthDay(30)
