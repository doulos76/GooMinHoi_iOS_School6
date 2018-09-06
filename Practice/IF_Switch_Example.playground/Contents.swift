//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 윤년 구하기
func isLeapYear(_ year:Int) -> Bool {
    //윤년 = 4년 마다, 100년마다x, 400 마다 o
//    year % 4 == 0 >> 4년으로 나누어 떨어지는 해
//    year % 100 == 0 >> 100년으로 나누어 떨어지는 해
//    year % 400 == 0 >> 400년으로 나누어 떨어지는 해
    if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
        return true
    } else {
        return false
    }
}

// 년/월을 입렵받아 해당 들의 마지막 날을 반환 해주는 함수(윤년 고려)
/// 월의 마지막 날을 구하는 함수
///
/// - Parameters:
///   - month: 구하려는 달
///   - year: 2월일 경우 윤년의 계산을 위해 필요한 데이터
/// - Returns: 마지막 날
func lastDay(of month: Int, year: Int) -> Int {
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        return 31
    case 4, 6, 9, 11:
        return 30
    case 2:
        return isLeapYear(year) ? 29 : 28
// 방법 1
//        isLeapYear(year) ? 29 : 28
// 방법 2
//        if isLeapYear(year)
//        {
//            return 29
//        } else {
//            return 28
//        }
    default:
        return 31
    }
}


// 여러개의 grade를 입력 받아서 grade의 평균을 변환해 주는 함수
func average(of aGrade: String, and bGrade: String, then cGrade: String) -> Double {
    let sumPoint = point(of: aGrade) + point(of: bGrade) + point(of: cGrade)
    let averagePoint = sumPoint / 3
    return averagePoint
}

func point(of grade: String) -> Double {
    switch grade {
    case "A+":
        return 3.5
    case "1+":
        return 3
    case "B+":
        return 2.5
    case "B":
        return 2
    default:
        return 1
    }
}

// 월을 입력받아 해당월의 이름을 반환해주는 함수 (dx: 1 >>>
