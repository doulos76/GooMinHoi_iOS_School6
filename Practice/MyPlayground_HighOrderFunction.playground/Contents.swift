//: Playground - noun: a place where people can play

import UIKit

//func firstCitizen() {
//    print("function call")
//}
//
//func function(_ parameter: @escaping () -> ()) -> (() -> ()) {
//    return parameter
//}
//
//let returnValue = function(firstCitizen)
//returnValue()

//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incremter() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incremter
//}

//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    return {
//        runningTotal += amount
//        return runningTotal
//    }
//    return
//}

//struct Pet {
//    enum PetType {
//        case dog, cat, snake, pig, bird
//    }
//    var type: PetType
//    var age: Int
//}
//
//let myPet = [
//    Pet(type: .dog, age: 13),
//    Pet(type: .dog, age: 2),
//    Pet(type: .dog, age: 7),
//    Pet(type: .cat, age: 9),
//    Pet(type: .snake, age: 4),
//    Pet(type: .pig, age: 5),
//]
//
//
//// 1. 강아지들의 나이를 합산한 결과를 반환하는 sum 함수 구현
//func sumOfPuppyAge(list: [Pet])->Int {
//    var sumOfPuppysAge: Int = 0
//
//    for pet in list {
//        guard pet.type == .dog else {
//            continue
//        }
//        sumOfPuppysAge += pet.age
//    }
//    return sumOfPuppysAge
//}
//
//print(sumOfPuppyAge(list: myPet))
// >>> 22

// 2. 모든 펫의 나이를 1씩 더한 배열을 반환하는 newAge 함수 구현

//func returnPlusOne(list: [Pet])-> [Pet] {
//    var newList = list
//
//    for pet in list {
//
//    }
//
//    return newList
//}


//let immutableArray = Array(1...40)
//
//// 1. 배열의 각 요소 * index값을 반환하는 함수
//func returnIndex(list: [Int]) -> [Int] {
//    var newArray: [Int] = []
//    for index in 0..<list.count {
//        newArray.append(index * list[index])
//    }
//    return newArray
//}
//
//print(returnIndex(list: immutableArray))
//
//// 2. 배열 요소 중 홀수는 제외하고 짝수만 반환하는 함수
//func returnEvenNumberArray(list: [Int]) -> [Int] {
//    var newArray: [Int] = []
//    for index in 0..<list.count {
//        if list.count % 2 == 0 {
//            newArray.append(list[index])
//        }
//    }
//    return newArray
//}
//
//// 3. 배열의 모든 값을 더하여 반환하는 구현
//func sumOfArrayElement(list: [Int]) -> Int {
//    var sumOfElement: Int = 0
//    for index in 0..<list.count {
//        sumOfElement += list[index]
//    }
//    return sumOfElement
//}
//
//// 4. immutableArray에 대해서 1-3번 함수를 차례대로 적용한 최종 값을 반환
//
////func returnResultTotalFunction(list: [Int]) -> {
////
////}

let immutableArray = Array(1...40)

immutableArray.enumerated()
    .map { $0 * $1 }
    .filter { $0 & 1 == 0 }
    .reduce(0) { $0 + $1 }



//let array = ["1j", "2d", "22", "33"]//, "44", "55"]
//
//let m1 = array.map({ Int($0) })
//let f1 = array.flatMap({ Int($0) })
////print(m1)
////print(f1)
//
//let m2 = array.map({ Int($0) }).first
//let f2 = array.flatMap({ Int($0) }).first//last
//print(m2)
//print(f2)

//let m3 = array.map({ Int($0) }).last
//let f3 = array.flatMap({ Int($0) }).last
//print(m3)
//print(f3)

let array: [[Int?]] = [[1, 2, 3], [nil, 5], [6, nil], [nil, nil]]

let m1 = array.map({ $0 })
print(m1)

let m2 = array.map({ $0.map({ $0 }) })
print(m2)
let m3 = array.map({ $0.flatMap({ $0 }) })
print(m3)
let f1 = array.flatMap({ $0 })
print(f1)
let f2 = array.flatMap({ $0.map({ $0 }) })
print(f2)
let f3 = array.flatMap({ $0.flatMap({ $0 }) })
print(f3)

// guideline
// app programming guideline






















