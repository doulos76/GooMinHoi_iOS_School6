//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// inout keyword
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 3
var b = 10
print(swapTwoInts(&a, &b))
a
b

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt : \(someInt)")
print("anotherInt: \(anotherInt)")

// various function - Example

func pass(num: Int) -> Int {
    return num
}
pass(num: 3)

func getPI() -> Double {
    let pi: Double = 3.141592
    return pi
}

print(getPI())

func sum(firstNum num1: Int, secondNum num2: Int) -> Int {
    return num1 + num2
}
let testNum = sum(firstNum: 3, secondNum: 7)
print(testNum)

func sum(num1: Int, num2: Int = 5) -> Int {
    return num1 + num2
}

let testNum2 = sum(num1: 15)
print(testNum2)
let testNum3 = sum(num1: 17, num2: 7)
print(testNum3)

func passNum(_ num: Int) -> Int {
    return num
}
let testNum4 = pass(num: 15)
print(testNum4)

func swapTwoInts(lInt a: inout Int, rInt b: inout Int) {
    let temporaryA: Int = a
    a = b
    b = temporaryA
}
var leftInt: Int = 13
var rightInt: Int = 23
swapTwoInts(&leftInt, &rightInt)
print(leftInt)
print(rightInt)

func calculator(num1: Int, num2: Int) -> (Int, Int) {
    let plus = num1 + num2
    let minus = num1 - num2
    return (plus, minus)
}
calculator(num1: 13, num2: 3)

func printName_ReturnType() -> String {
    return "my Name is youngmin"
}
let testString: String = printName_ReturnType()
testString

func printName_noReturnType() {
    print("my name is youngmin")
}
printName_noReturnType()
//let testString1: String = printName_noReturnType() >>> error 발생, return 할 수 없는 함수

func printName(name: String = "youngmin") {
    print("my name is \(name)")
}
printName(name: )
printName(name: "Koo")

func printName(explain str: inout String) -> String {
    str += "joo"
    return str
}
var youngmin: String = "Tutor: youngmin "
youngmin = printName(explain: &youngmin)
print(youngmin)




























