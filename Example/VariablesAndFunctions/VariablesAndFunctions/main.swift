//
//  main.swift
//  VariablesAndFunctions
//
//  Created by dave on 05/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import Foundation


// 일반 변수 선언
var name: String = "joo"

// 변수 값 재정의
var number: Int = 50
number = 100

// 상수 선언
let PI = 3.14

var address: String?
address = "서울시 신사동"

// 변수: 변할 수 있는 값
var name1:String = "Koo"
name1 = "iOS Development School"

// 상수: 변할 수 없는 고정값
let name2: String = "joo"
//name = "iSO 개발 스쿨"

// 변수 타입

// 정수
var intName: Int

// 실수
var doubleName: Double
// 문자열
var stringName: String
// 불리언
var boolName: Bool

// 참조형
//let customView: UIView
let timer: Timer

var testNum: Int = 0

// String 조합
// 1. string 변합: + 기호를 사용
var name3: String
name3 = "James" + "Dean"

// 2. interpolatio(삽입): \(참조값)
var name4: String = "홍길동"
//print("my name is \(name4)")

// SubString
// String을 나누면 SubString type으로 반환된다.

let sampleText = "<<<Hello>>>"
let startIndex = sampleText.index(sampleText.startIndex, offsetBy: 3)
let endIndex = sampleText.index(sampleText.endIndex, offsetBy: -4)
print(startIndex)

let substring1: Substring = sampleText[startIndex...endIndex]
let resultStr: String = String(substring1)
print(resultStr)

// Tuple
var coin: (Int, Int, Int, Int) = (3, 1, 5, 3)
print("10원짜리: \(coin.0)")
print("50원짜리: \(coin.1)")
print("100원짜리: \(coin.2)")
print("500원짜리: \(coin.3)")

var person: (name: String, age: Int, weight: Double) = ("joo", 30, 180.2)
print("이름: " + person.name)
print("나이: " + "\(person.age)")
print("몸무게: " + "\(person.weight)")

// Casting(형변환)
var total: Int = 107
var average: Double
average = Double(total) / 5

var stringNum: String
var doubleNum: Double
let intNum: Int = 3

stringNum = String(intNum)
doubleNum = Double(intNum)


//키워드-함수이름-인수명-매개변수명-매개변수타입-반환타입
func fName(argumentName paramName: Int) -> Int {
  return paramName + 3
}

print(fName(argumentName: 10))

func number(num1: Int, num2: Int = 10) -> Int {
  return num1 + num2
}
print(number(num1: 10))
print(number(num1: 10, num2: 5))

// In-Out Parameter Keyword
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temporaryA = a
  a = b
  b = temporaryA
}

var someInt = 3
var anotherInt = 107
print("\n--------------[ Before ]-----------------\n")
print("someInt: ", someInt)
print("anotherInt: ", anotherInt)

swapTwoInts(&someInt, &anotherInt)
print("\n--------------[ After ]-----------------\n")
print("someInt: ", someInt)
print("anotherInt: ", anotherInt)


func pass(num: Int) -> Int {
  return num
}
print(pass(num: 3))

func getPI() -> Double {
  let pi: Double = 3.141592
  return pi
}
print(getPI())

func sum(firstNum num1: Int, secondNum num2: Int) -> Int {
  return num1 + num2
}

print(sum(firstNum: 15, secondNum: 2))

func sum(num1: Int, num2: Int = 5) -> Int {
  return num1 + num2
}

print(sum(num1: 5, num2: 2))

func passNum(_ num: Int) -> Int {
  return num
}
print(passNum(5))

func swapTwoInts1(lInt a: inout Int, rInt b: inout Int) {
  let temporaryA: Int = a
  a = b
  b = temporaryA
}
swapTwoInts1(lInt: &someInt, rInt: &anotherInt)
print(someInt)
print(anotherInt)

func calculator(num1: Int, num2: Int) -> (Int, Int) {
  let plus = num1 + num2
  let minus = num1 - num2
  
  return (plus, minus)
}

func printName() -> String {
  return "my name is youngmin"
}

func printName() {
  print("my name is youngmin")
}

func printName(name: String = "youngmin") {
  print("my name is \(name)")
}

func printName(explain str: inout String) -> String {
  str += "joo"
  return str
}
var nameJoo = "youngmin"
var nameK = printName(explain: &nameJoo)
print(nameK)

func squareArea(length: Int) -> Int {
  return length * length
}

func squarePerimeter(length: Int) -> Int {
  return  4 * length
}

var lengthOfSquare: Int = 3
var areaOfSquare = squareArea(length: lengthOfSquare)
var perimeterOfSquare = squarePerimeter(length: lengthOfSquare)
print(areaOfSquare)
print(perimeterOfSquare)
