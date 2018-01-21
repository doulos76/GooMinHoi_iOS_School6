//: Playground - noun: a place where people can play

import UIKit

// 구구단

/// 구구단을 출력하는 프로그램
///
/// - Parameter times: 몇 단
func timesTable(_ times: Int) {
    let times: Int = times
    var num: Int = 1

    print("\(times)단 출력")

    while num < 10 {

        print("\(times) × \(num) = \(times * num)")
        num += 1
    }
}
// 실행
timesTable(3)

// 삼각수 구하기 : 삼각수란 1부터 모든 수의 합이다. ex) 삼각수 10 = 55
// 메소드 실행 : triangualar(num: 10)     // tringular (num : -1_
// 결과 : 55                           // 0

func triangular(of num:Int) -> Int {
    var result: Int = 0
    var count = 1
    if num <= -1 {
        return 0
    }
    while count <= num {
        result += count
        count += 1
    }

    return result
}

triangular(of: 10)
triangular(of: 100)

// 각 자리수 더하는 메소드
// addAll(num: 123) ///>>> 6
 //addAll(num: 5792) ///>>> 23

//func addAll(num: Int) -> Int {
//    var inputNum: Int = num
//    var q: Int = 0
//    var sum: Int = 0
//    var remain: Int = 0
//    let stringOfNumber: String = String(num)
//    var decimalPoint: Int = stringOfNumber.count
//
//    while decimalPoint > 0  {
//        q = inputNum / (10 ^ (decimalPoint - 1))
//        sum += q
//        remain = inputNum % (10 ^ (decimalPoint - 1))
//        inputNum = remain
//        decimalPoint -= 1
//    }
//    return sum
//}

//addAll(num: 123)

//let num1 = 123
//let numString = String(num1)
//let decimalPoint: Int = numString.count

//func addAll(num: Int) -> Int {
//    var tempNum: Int = num
//    var sum: Int = 0
//    while tempNum > 0 {
//        let lastNum: Int = tempNum % 10
//        sum += lastNum
//        tempNum /= 10
//    }
//    return sum
//}
//
//addAll(num: 203)

// 강사님 코드
//func triangular(num:Int) -> Int
//{
//    var tempNum:Int = num
//    var resultNum = 0
//    while tempNum > 0 {
//        resultNum += tempNum
//        tempNum -= 1
//    }
//    return tempNum
//}
//
//
//func addAll(num:Int) -> Int
//{
//    var tempNum:Int = num
//    var sumNum:Int = 0
//    while tempNum > 0 {
//        let lastNum:Int = tempNum % 10
//        sumNum += lastNum
//        tempNum /= 10
//    }
//    return sumNum
//}

func reverse(num: Int) -> Int {
    var tempNum:Int = num
    var sumSting: String = ""

    while tempNum > 0 {
        let lastNum: Int = tempNum % 10
        sumSting += String(lastNum)
        tempNum /= 10
    }
    return Int(sumSting)!
}

let testString = reverse(num: 41233)
print(testString)

// debugPrint
for n in 1...5 {
    debugPrint(n, terminator: " ")
}
// Prints "12345"







