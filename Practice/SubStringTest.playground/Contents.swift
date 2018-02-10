//: Playground - noun: a place where people can play

import UIKit

//let sampleText = "<<<Hello>>>"
//let startIndex = sampleText.index(sampleText.startIndex, offsetBy: 3)
//let endIndex = sampleText.index(sampleText.endIndex, offsetBy: -4)
//print(startIndex)
//let subString1: Substring = sampleText[startIndex ... endIndex]
//let resultStr: String = String(subString1)
//print(resultStr)


let myName: String = "<<<<MinHoi_Goo>>"
let startIndex = myName.index(myName.startIndex, offsetBy: 4)
let endIndex = myName.index(myName.endIndex, offsetBy: -3)
print(startIndex)
let subString1: Substring = myName[startIndex...endIndex]
let resultStr: String = String(subString1)
print(resultStr)

