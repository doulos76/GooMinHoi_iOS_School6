//: Playground - noun: a place where people can play

import UIKit

let sampleText = "<<<Hello>>>"
let startIndex = sampleText.index(sampleText.startIndex, offsetBy: 3)
let endIndex = sampleText.index(sampleText.endIndex, offsetBy: -4)
print(startIndex)

let substring1: Substring = sampleText[startIndex ... endIndex]
let resultStr:String = String(substring1) // “Hello”
print(resultStr)

var sampleTuple: (Int, String, Int) = (3, "joo", 4)
print(sampleTuple.0)
print(sampleTuple.1)
print(sampleTuple.2)

func calculator(num1: Int, num2: Int) -> (Int, String)
{
    let sum: Int = num1 + num2
    return (sum, String(sum))
}

let result: (intSum: Int, strSum: String) = calculator(num1: 10, num2: 3)
let intResult = result.intSum
let stringResult = result.strSum

var stringNum: String
var doubleNum: Double
let intNum: Int = 3

stringNum = String(intNum)
doubleNum = Double(intNum)

let num: String = "3"
//let str: Int? = Int(num)
//let str: Int = Int(num)
//let str: Int = Int(num)
let str = Int(num)
let num2 = 5
//let sum = str + num2 // Optional Int + Int 는 할 수 없다.


