import UIKit

let twodArr:[[Int]] =
[[100, 200, 300, 400],
 [5, 6, 7, 8],
 [9, 10, 11, 12]
]

/*
//===================Search Element=================
func searchElement()->Bool{
    let row = 3, col = 4, searchElement = 12
    for rowIndex in 0..<row{
        for colIndex in 0..<col{
            print(twodArr[rowIndex][colIndex])
            if twodArr[rowIndex][colIndex] == searchElement{
                return true
            }
        }
    }
    return false
}

//print(searchElement())

//===================Pass Two Dimension Array=================
//print(passTwoDArr(twodArr))
func passTwoDArr(_ x:[[Int]])->Bool{
    let row = 3, col = 4, searchElement = 12
    for rowIndex in 0..<row{
        for colIndex in 0..<col{
            print(twodArr[rowIndex][colIndex])
            if twodArr[rowIndex][colIndex] == searchElement{
                return true
            }
        }
    }
    return false
}

//===================Print Element Col Wise=================
//printElementColWise()
func printElementColWise(){
    let row = 3, col = 4, searchElement = 12
    for colIndex in 0..<col{
        for rowIndex in 0..<row{
            print(twodArr[rowIndex][colIndex], terminator: " ")
        }
        print("")
    }
}

//===================Create 2D Array=================
//createTwoDArray()
func createTwoDArray(){
    let arr1:[[Int]] =
    [[1, 2, 3, 4],
     [5, 6, 7, 8],
     [9, 10, 11, 12]
    ]
    
    let arr2:[[Int]] =
    [[1, 2, 3, 4],
     [5, 6, 7, 8],
     [9, 10, 11, 12]
    ]
    
    let row = 3, col = 4
    var twodArr1 = Array(repeating: Array(repeating: 0, count: 4), count: 3)
    
    for rowIndex in 0..<row{
        for colIndex in 0..<col{
            twodArr1[rowIndex][colIndex] =
            arr1[rowIndex][colIndex] + arr2[rowIndex][colIndex]
            print(twodArr1[rowIndex][colIndex], terminator: " ")
        }
        print("")
    }
}


//==============Print row index with max sum================
//rowIndexWithMaxSum()
func rowIndexWithMaxSum(){
    var indexSum:(sum:Int, index:Int) = (Int.min,0)
    let row = 3, col = 4
    for rowIndex in 0..<row{
        var total = 0
        for colIndex in 0..<col{
            total += twodArr[rowIndex][colIndex]
        }
        if total > indexSum.sum{
            indexSum = (total, rowIndex)
        }
    }
    print(indexSum)
}

//==============Print diagonal sum================
diagonalArraySum()
func diagonalArraySum(){
    
    let twodArr:[[Int]] =
    [[1, 2, 3],
     [4, 15, 6],
     [7, 8, 19]
    ]
    
    var diagonalSum:(first:Int, second:Int) = (0,0)
    let row = 3, col = 3
    for index in 0..<row{
        diagonalSum.first += twodArr[index][index]
    }
    
    var rowIndex = 0, colIndex = col-1
    while rowIndex < row{
        diagonalSum.second += twodArr[rowIndex][colIndex]
        rowIndex += 1
        colIndex -= 1
    }
    
    print(diagonalSum)
}
 

//==============Reverse array================
func reverseArray(){
    var arr = [1, 2, 3, 4, 5]
    var start = 0, end = arr.count-1
    while start<end{
        arr.swapAt(start, end)
        start+=1
        end-=1
    }
    print(arr)
}
reverseArray()
 */
//==============Reverse row of array================
func reverseRowOfArray(){
    var twodArr:[[Int]] =
    [[100, 200, 300, 400],
     [5, 6, 7, 8],
     [9, 10, 11, 12]
    ]
    for row in 0..<twodArr.count
    {
        var start = 0, end = twodArr[row].count-1
        while start<end{
            let temp = twodArr[row][start]
            twodArr[row][start] = twodArr[row][end]
            twodArr[row][end] = temp
            start+=1
            end-=1
        }
    }
    for row in 0..<twodArr.count
    {
        for col in 0..<twodArr[row].count
        {
            print(twodArr[row][col], terminator: " ")
        }
        print("\n")
    }
}
reverseRowOfArray()
