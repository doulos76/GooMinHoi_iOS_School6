//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// if 문 풀어서 설계
func leapyearCalculate1(input year: Int) -> Bool {
    let inputYear = year
    var isLeapYear: Bool

    if (inputYear % 4 == 0) {
        isLeapYear = true
        if (inputYear % 100 != 0) {
            isLeapYear = true
        } else {
            isLeapYear = false
            if (inputYear % 400 == 0) {
                isLeapYear = true
            } else {
                isLeapYear = false
            }
        }
    } else {
        isLeapYear = false
    }
    return isLeapYear
}

// if문에 logic 비교 연산을 이용한 해결방법
func leapyearCalculate(input year: Int) -> Bool {
    let inputYear = year
    var isLeapYear: Bool
    
    if inputYear % 4 == 0 && inputYear % 100 != 0 || inputYear % 400 == 0 {
        isLeapYear = true
    } else {
        isLeapYear = false
    }
    
    return isLeapYear
}

let testYear1: Bool = leapyearCalculate(input: 2300)
let testYear2: Bool = leapyearCalculate(input: 2008)
let testYear3: Bool = leapyearCalculate(input: 1988)
let testYear4: Bool = leapyearCalculate1(input: 2100)
let testYear5: Bool = leapyearCalculate1(input: 2000)
