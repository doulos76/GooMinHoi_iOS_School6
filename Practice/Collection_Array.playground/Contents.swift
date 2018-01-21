//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var ageDef = Int(10)
var ageCasting = Int("10")
var ageLiteral = 10


//Array 만드는 법
var list:[String] = ["abc", "cde"]

// 빈 배열 생성
var someInts: [Int] = [1, 2, 3, 4]
someInts = []


// type을 지정하지 않으면 error 발생
//var errorList = [] >>> erroer 발생
var nonErrorList = [1, 2, 3]

var testStringofInt: String = String(123)
var testString: String = String("123")

var num: Int = 5
//num = String(num) // error 나옴

//value type
//reference type

3.distance(to: 5)

//Array

var todoList: [String] = ["eating", "drivinng", "working"]
todoList.count
todoList.isEmpty
todoList.append("meeitng")
todoList.insert("talking", at: 1)
todoList.remove(at: 1)
todoList
todoList.endIndex
todoList.joined()
todoList

//Error
//var complexArray: [Array] = [[2.3, 3.4, 5.6], ["abc", "dec"]]

// 배열 예제

func arrayTest()
{
    var list: [String] = ["my", "name", "is", "a","joo", "youngmin"]
    list.append("입니다.")
    print("list배열의 총 갯수는 ", list.count)
    print(list[3])
    list.remove(at: 3)
    list.insert("my introduce it my self", at: 0)

    //Array
   // list.
    for text in list {
        print(text)
    }
}

arrayTest()




























