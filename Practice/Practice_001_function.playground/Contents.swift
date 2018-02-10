//: Playground - noun: a place where people can play
// 함수 만들기 실습

import UIKit

//<기초>
//1-a 이름(문자열)을 받아서 이름을 출력하는 함수

/// 이름을 출력해 주는 함수
///
/// - Parameter name: 이름, String type
func printName(name: String) {
    print("이 름 : \(name)")
}

//  실행 검증
printName(name: "구민회")
// 결과값 >>> 이 름 : 구민회

//1-b 나이*(정수)를 받아서 나이를 출력하는 함수

/// 나이를 출력하는 함수
///
/// - Parameter age: 나이-Int형
func printAge(age: Int) {
    print("나이 : \(age)세")
}
// 실행 검증
printAge(age: 24)
// 결과값 >>> 나이 : 24세

//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
func printSelfIntroduce(name: String, address: String) {
    print("안녕하세요?")
    print("저는 \'\(name)\'입니다. 저는 \'\(address)\'에 살고 있습니다. 반갑습니다.")
}
// 실행 검증
printSelfIntroduce(name: "구민회", address: "인천광역시 남구 용현동")
// 결과값 >>> 저는 '구민회'입니다. 저는 '인천광역시 남구 용현동'에 살고 있습니다. 반갑습니다.

//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수

/// 정수 하나를 입력 받아 2로 나눈 값 반환해 주는 함수
///
/// - Parameter inputNumber: 입력 정수 값
/// - Returns: 입력 정수를 반으로 나눈 반환 값
func returnHalfNumber(of inputNumber: Int) -> Double {
    let returnNumber: Double = Double(inputNumber) / 2
    return returnNumber
}
// 실행 검증
returnHalfNumber(of: 10)    // >>> 5
returnHalfNumber(of: 3)     // >>> 1.5

//정수를 하나 입력받아서 제곱을 반환해주는 함수

/// 입력된 정수의 제곱을 반환하는 함수
///
/// - Parameter inputNumber: 입력 정수 값
/// - Returns: 입력된 정수의 제곱 수
func returnSquare(of inputNumber: Int) -> Int {
    return inputNumber * inputNumber
}
// 실행 검증
returnSquare(of: 2)     // >>> 4

//<응용 - 다중 입력, 반환>
//2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수

/// 입력된 2수의 합을 반환하는 함수
///
/// - Parameters:
///   - firstNum: 첫번째 수
///   - secondNum: 두번째 수
/// - Returns: 두 수의 합
func sum(number1 firstNum: Double, AndNumber2 secondNum: Double) -> Double {
    return firstNum + secondNum
}
// 실행 및 결과값 확인
sum(number1: 3, AndNumber2: 7)  // >>> 10

//2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수

/// 두 정수의 차를 구하는 함수
///
/// - Parameters:
///   - firstNum: 첫 번째 정수
///   - secondNum: 두 번째 정수
/// - Returns: 두 정수의 차
func subtract(number1 firstNum: Int, AndNumber2 secondNum: Int) -> Int {
    return firstNum - secondNum
}
// 실행 및 결과값 확인
subtract(number1: 10, AndNumber2: 3)    // >>> 7


//2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수

/// 두개의 입력된 값을 곲셈을 하여 반환하는 함수
///
/// - Parameters:
///   - number1: 첫번째 입력 수
///   - number2: 두번째 입력 수
/// - Returns: 두 수의 곱
func multiplication(of number1: Int, and number2: Int) -> Int {
    return number1 * number2
}
// 실행 및 결과값 확인
multiplication(of: 2, and: 7)   // >>> 14

//2-d. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수

/// 두 수의 나눗셈을 반환하는 함수
///
/// - Parameters:
///   - dividend: 입력 피제수
///   - divisor: 입력 제수
/// - Returns: 입력된 수의 나눗셈 값
func division(of dividend: Int,over divisor: Int) -> Double {
    return Double(dividend) / Double(divisor)
}
// 실행 및 결과값 확인
division(of: 9, over: 3)    // >>>3

//<응용>
//부모님과 내 나이를 입력 후 그 나이차를 프린드 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)

/// 부모님과 내 나이의 차를 프린트 하는 함수
///
/// - Parameters:
///   - parentAge: 부모님의 나이
///   - myAge: 나의 나이
func difference(parent parentAge: Int, me myAge: Int) {
    let differenceOfAge: Int = parentAge - myAge
    print("어머니의 나이는 \(parentAge)세이고 내 나이는 \(myAge)살이므로 우리의 나이차이는 \(differenceOfAge)살입니다.")
    
}
// 실행 및 결과값 확인
difference(parent: 62, me: 40)  // >>> 어머니의 나이는 62세이고 내 나이는 40살이므로 우리의 나이차이는 22살입니다.

//시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수

/// 4개의 과목에 대한 평균 점수를 반환하는 함수
///
/// - Parameters:
///   - subject1: 첫번째 과목 점수
///   - subject2: 두번째 과목 점수
///   - subject3: 세번째 과목 점수
///   - subject4: 네번째 과목 점수
/// - Returns: 네 과목의 평균 점수
func average(subject1: Int, subject2: Int, subject3: Int, subject4: Int) -> Double {
    let averageScore: Double = Double(subject1 + subject2 + subject3 + subject4) / 4
    return averageScore
}

// 실행 및 결과 값 확인
average(subject1: 100, subject2: 90, subject3: 84, subject4: 92)    // >>> 91.5

/// 함수의 Test를 위한 가상 입력 점수 배열
let sampleScoreArray: [Int] = [100, 90, 84, 92]

/// 평균값을 구하는 함수
///
/// - Parameter subjectsArray: 과목들의 점수를 Array로 만든 Sample
/// - Returns: 평균점수
func average(subjects subjectsArray: [Int]) -> Double {
    var totalScore: Int = 0
    for score in subjectsArray {
        totalScore += score
    }
    let averageScore = Double(totalScore) / 4
    return averageScore
}
// 실행 및 결과 값 확인
average(subjects: sampleScoreArray) // >>> 91.5

//<캐스팅>
//정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수

/// 정수를 실수로 변환 후 반환하는 함수
///
/// - Parameter intNumber: 입력 정수
/// - Returns: 실수로 변환 후 반환
func convertDouble(of intNumber: Int) -> Double {
    return Double(intNumber)
}
// 실행 및 결과 값 확인
convertDouble(of: 24)   // 24
type(of: convertDouble(of: 24)) // Double.Type

//정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)

/// 정수를 2개 입력받아 두 수를 합친수를 출력하는 함수
///
/// - Parameters:
///   - inputNum1: 첫번째 입력수
///   - inputNum2: 두번째 입력수
/// - Returns: 두수를 나열한 순서대로 함한 수
func convertTwoInputIntToString(inputNum1: Int, inputNum2: Int) -> Int {
    let result: Int = Int(String(inputNum1) + String(inputNum2))!
    return result
}
// 실행 및 결과 값 확인
convertTwoInputIntToString(inputNum1: 3, inputNum2: 4)  // 34
convertTwoInputIntToString(inputNum1: 1, inputNum2: 0)  // 10

//실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수

/// 실수를 하나 입력 받아 소수점 첫번째 자리에서 반올림 후 정수를 변환해 주는 함수
///
/// - Parameter inputNum: 입력 실수
/// - Returns: 반환 정수
func roundingOff(inputNum: Double) -> Int {
    let resultNum: Int = Int(inputNum + 0.5)
    return resultNum
}
// 실행 및 결과 값 확인
roundingOff(inputNum: 3.2)
roundingOff(inputNum: 1.7)
