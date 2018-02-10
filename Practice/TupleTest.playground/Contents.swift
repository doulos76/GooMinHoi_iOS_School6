//: Playground - noun: a place where people can play
// Tuple
// - 정해지지 않은 데이터 타입의 묶음
// - 소괄호()안에 타입을 묶음으로 새로운 Tuple Type을 만들수 있음
//   ex) (Int, Int) // (String, Int, String)
// - 각 타입마다 이름을 지정해 줄 수도 있음
//   ex) (name: String, age: Int)

import UIKit

//Tuple Example

var coin: (Int, Int, Int, Int) = (3, 1, 5, 3)
print("10원짜리 : \(coin.0)")
print("50원짜리 : \(coin.1)")
print("100원짜리 : \(coin.2)")
print("500원짜리 : \(coin.3)")

var person: (name: String, age: Int, weight: Double) = ("joo", 30, 180.2)

print("이름: " + person.name)
print("나이:  + \(person.age)")
print("몸무게: \(person.name)")
