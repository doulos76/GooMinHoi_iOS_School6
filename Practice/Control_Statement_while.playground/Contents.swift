//: Playground - noun: a place where people can play

import UIKit


//triangular
func triangular(num:Int) -> Int
{
    var tempNum: Int = num
    var resultNum = 0
    while tempNum > 0 {
        resultNum += tempNum
        tempNum -= 1
    }
    return resultNum
}

let result: Int = triangular(num: 3)
print(result)


//addAll
func addAll(num:Int) -> Int
{
    var tempNum:Int = num
    var sumNum:Int = 0
    while tempNum > 0 {
        let lastNum:Int = tempNum % 10
        sumNum += lastNum
        tempNum /= 10
    }
    return sumNum
}

let resultAddAll: Int = addAll(num: 10)
print(resultAddAll)

// Harshad
func isHarshad(num:Int) -> Bool
{
    var isHarshardNum = false
    if num > 0
    {
        var tempNum = num
        var sumNum = 0
        while tempNum > 0 {
            sumNum += (tempNum % 10)
            tempNum /= 10
        }
        if num % sumNum == 0
        {
            isHarshardNum = true
        }
    }
    
    return isHarshardNum
}

isHarshad(num: 199)


