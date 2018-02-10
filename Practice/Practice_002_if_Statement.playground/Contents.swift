//: Playground - noun: a place where people can play

import UIKit

//<if>
//정수를 하나 입력받아 그 수가 짝수이면 true를  반환하는 함수

func isEvenNumer(number: Int) -> Bool {
    let isEven: Bool = (number % 2 == 0) ? true : false
    return isEven
}

isEvenNumer(number: 7)
isEvenNumer(number: 22)

//문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수

func isEqual(number1: Int, number2: Int) -> Bool
{
    if number1 == number2 {
        return true
    } else {
        return false
    }
}

isEqual(number1: 32, number2: 23)
isEqual(number1: 12, number2: 12)

//두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요.

func isBigNumber(number1: Int, number2: Int) -> Int {
    var bigNumber: Int = 0
    if number1 > number2 {
        bigNumber = number1
    } else if number1 == number2{
        bigNumber = number1
    } else {
        bigNumber = number2
    }
    return bigNumber
}

isBigNumber(number1: 14, number2: 7)
isBigNumber(number1: 3, number2: 9)
isBigNumber(number1: 32, number2: 32)


//정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
func isMultipleOfThree(number: Int) -> Bool {
    let isMultipleOfThree: Bool
    if number % 3 == 0 {
        isMultipleOfThree = true
    } else {
        isMultipleOfThree = false
    }
    return isMultipleOfThree
}

isMultipleOfThree(number: 27)
isMultipleOfThree(number: 17)

// 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)

func division(dividend: Int, divisor: Int) -> Double {
    let quotient: Double
    if divisor == 0 {
        quotient = 0
    } else {
        quotient = Double(dividend) / Double(divisor)
    }
    return quotient
}

division(dividend: 24, divisor: 2)
division(dividend: 23, divisor: 7)
division(dividend: 20, divisor: 0)

//응용
//시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")

func returnGrade(score: Int) -> String {
    let grade: String
    if score > 100 || score < 0 {
        return "Wrong, please input score between 0 and 100"
    } else if score >= 95 {
        grade = "A+"
    } else if score >= 90 {
        grade = "A0"
    } else if score >= 85 {
        grade = "B+"
    } else if score >= 80 {
        grade = "B0"
    } else if score >= 75 {
        grade = "C+"
    } else if score >= 70 {
        grade = "C0"
    } else if score >= 65 {
        grade = "D+"
    } else if score >= 60 {
        grade = "D0"
    } else {
        grade = "F0"
    }
    return grade
}

returnGrade(score: 78)
returnGrade(score: 120)
returnGrade(score: 98)
returnGrade(score: -20)

//여러개의 grade를 입력받아서 grade의 평균을 반환해주는 함수

let grades: [String] = ["A+", "B+", "C0", "D0"]

func averageGrade(input grades: [String]) -> String
{
    var averageGrades: String = ""
    var eachScore: Double = 0
    var totalScore : Double = 0
    for grade in grades
    {
        switch grade {
        case "A+": eachScore = 97.5
        case "A0": eachScore = 92.5
        case "B+": eachScore = 87.5
        case "B0": eachScore = 82.5
        case "C+": eachScore = 77.5
        case "C0": eachScore = 72.5
        case "D+": eachScore = 67.5
        case "D0": eachScore = 62.5
        case "F": eachScore = 0.0
        default: eachScore = 0
        }
        
        totalScore += eachScore
     }
    let averageScore: Double = Double(totalScore) / Double(grades.count)
    averageGrades = returnGrade(score: averageScore)
    return averageGrades
}

func returnGrade(score: Double) -> String {
    let grade: String
    if score > 100 || score < 0 {
        return "Wrong, please input score between 0 and 100"
    } else if score >= 95 {
        grade = "A+"
    } else if score >= 90 {
        grade = "A0"
    } else if score >= 85 {
        grade = "B+"
    } else if score >= 80 {
        grade = "B0"
    } else if score >= 75 {
        grade = "C+"
    } else if score >= 70 {
        grade = "C0"
    } else if score >= 65 {
        grade = "D+"
    } else if score >= 60 {
        grade = "D0"
    } else {
        grade = "F0"
    }
    return grade
}

averageGrade(input: grades)


//윤년 구하기 문제(년도를 받아서 윤년인지 아닌지 판단하는 함수)
func isLeapYear(year: Int) -> Bool {
    var isLeapYear: Bool = false
    if ((year % 400 == 0) || (year % 100 != 0)) && (year % 4 == 0) {
        isLeapYear = true
    }
    return isLeapYear
}

isLeapYear(year: 1988)
isLeapYear(year: 2000)
isLeapYear(year: 100)
isLeapYear(year: 1300)

//세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false, 둘 다 아니면 에러를 발생시키는 함수를 작성하세요.

func isPositiveNumberOfMultipleOf(inputNumber1: Int, inputNumber2: Int, inputNumber3: Int) -> String {
    var result: String = ""
    let resultNumber = inputNumber1 * inputNumber2 * inputNumber3
    
    if resultNumber > 0{
        result = "true"
    } else if resultNumber <= 0 {
        result = "false"
    } else {
        result = "Error"
    }
    
    return result
}

isPositiveNumberOfMultipleOf(inputNumber1: 34, inputNumber2: 2, inputNumber3: -3)
isPositiveNumberOfMultipleOf(inputNumber1: 34, inputNumber2: 0, inputNumber3: -3)
isPositiveNumberOfMultipleOf(inputNumber1: -2, inputNumber2: -8, inputNumber3: 3)


// 년/월을 입렵받아 해당 들의 마지막 날을 반환 해주는 함수(윤년 고려)
func lastDay(year: Int, month: Int) -> Int {
    switch month {
    case 2:
        return isLeapYear(year: year) ? 29 : 28
    case 4, 6, 9, 11:
        return 30
    default:
        return 31
    }
}

lastDay(year: 2018, month: 1)
lastDay(year: 2000, month: 2)


















