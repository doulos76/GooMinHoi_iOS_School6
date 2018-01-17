//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var score: Double = 97
// 시험 점수를 받아서 해당 점수의 등급을 반환해 주는 함수
func returnGradeforScore(inputScore: Double) -> String {
    var grade: String = ""
    let score: Double = inputScore
    if (score <= 100 && score >= 95) {
        grade = "A+"
    } else if (score < 95 && score >= 90) {
        grade = "A"
    } else if (score < 90 && score >= 85) {
        grade = "B+"
    } else if (score < 85 && score >= 80) {
        grade = "B"
    } else if (score < 80 && score >= 75) {
        grade = "C+"
    } else if (score < 75 && score >= 70) {
        grade = "C"
    } else if (score < 70 && score >= 65) {
        grade = "D+"
    }  else if (score < 65 && score >= 60) {
        grade = "D"
    }  else if (score < 65 && score >= 0)  {
        grade = "F"
    } else {
        print("잘못된 입력입니다.")
    }
    return grade
}

returnGradeforScore(inputScore: score)

// Grade를 받아서 Point 로 변환해 주는 함수.

func returnPointforGrade(inputGrade: String) -> Double {
    var score: Double = 0.0
    let grade: String = inputGrade
    if (grade == "A+") { score = 4.5 }
    else if (grade == "A") { score = 4.0 }
    else if (grade == "B+") { score = 3.5 }
    else if (grade == "B") { score = 3.0 }
    else if (grade == "C+") { score = 2.5 }
    else if (grade == "C") { score = 2.0 }
    else if (grade == "D+") { score = 1.5 }
    else if (grade == "D") { score = 1.0 }
    else if (grade == "F") { score = 0.5 }
    else {
        print("잘못된 입력입니다.")
    }
    return score
}

var myScore: Double = returnPointforGrade(inputGrade: "A+")
print(myScore)




//<if>
//정수를 하나 입력받아 그 수가 짝수이면 true를  반환하는 함수
//문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수
//두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요.
//정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
// 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)

//응용
//시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
//여러개의 grade를 입력받아서 grade의 평균을 반환해주는 함수
//윤년 구하기 문제(년도를 받아서 윤년인지 아닌지 판단하는 함수)
//세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false, 둘 다 아니면 에러를 발생시키는 함수를 작성하세요.

//<if>
//정수를 하나 입력받아 그 수가 짝수이면 true를  반환하는 함수
func returnEvenNumber(input num: Int) -> Bool {
    let inputNum: Int = num
    var isEven: Bool
    if (inputNum % 2 == 0) {
        isEven = true
    } else {
        isEven = false
    }
    return isEven
}

returnEvenNumber(input: 32)
returnEvenNumber(input: 37)

//문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수
func returnSameString(string1: String, string2:String) -> Bool {
    let inputString1: String = string1
    let inputString2: String = string2
    var isEqual: Bool
    if inputString1 == inputString2 {
        isEqual = true
    } else {
        isEqual = false
    }
    return isEqual
}

returnSameString(string1: "Hello", string2: "Hello")
returnSameString(string1: "Hello", string2: "hello")

//두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요.
func returnBigNumber(input1 number1: Int, input2 number2: Int) -> Int {
    var bigNumber: Int = 0
    if number1 > number2 {
        bigNumber = number1
    } else {
        bigNumber = number2
    }
    return bigNumber
}

returnBigNumber(input1: 32, input2: 10)
returnBigNumber(input1: 15, input2: 27)

//정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
func detectionMultipleOfThree(input num: Int) -> Bool {
    var result: Bool
    let inputNum: Int = num
    if inputNum % 3 == 0 {
        result = true
    } else {
        result = false
    }
    return result
}

detectionMultipleOfThree(input: 27)
detectionMultipleOfThree(input: 11)

// 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)
func divide(devidend: Int, divisor: Int) -> Double {
    var result = 0.0
    if divisor == 0 {
        result = 0
    } else {
        result = Double(devidend) / Double(divisor)
    }
    return result
}

divide(devidend: 36, divisor: 7)
divide(devidend: 40, divisor: 5)

//응용
//시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
func returnGradeOfScore(inputScore: Double) -> String {
    var grade: String = ""
    let score: Double = inputScore
    if (score <= 100 && score >= 95) {
        grade = "A+"
    } else if (score < 95 && score >= 90) {
        grade = "A"
    } else if (score < 90 && score >= 85) {
        grade = "B+"
    } else if (score < 85 && score >= 80) {
        grade = "B"
    } else if (score < 80 && score >= 75) {
        grade = "C+"
    } else if (score < 75 && score >= 70) {
        grade = "C"
    } else if (score < 70 && score >= 65) {
        grade = "D+"
    }  else if (score < 65 && score >= 60) {
        grade = "D"
    }  else if (score < 65 && score >= 0)  {
        grade = "F"
    } else {
        print("잘못된 입력입니다.")
    }
    return grade
}

returnGradeOfScore(inputScore: 92)

//여러개의 grade를 입력받아서 grade의 평균을 반환해주는 함수
func avarageGrade(subject1 grade1: String, subject2 grade2: String, subject3 grade3: String, subject4 grade4: String, subject5 grade5: String) -> String {
    var averageGrade: String = ""
    
    var sum: Double = gradeToSum(grade: grade2)
    sum += gradeToSum(grade: grade2)
    sum += gradeToSum(grade: grade3)
    sum += gradeToSum(grade: grade4)
    sum += gradeToSum(grade: grade5)
    
    let average: Double = sum / 5
    
    if average >= 4.5 { averageGrade = "A+"}
    else if average >= 4.0 { averageGrade = "A"}
    else if average >= 3.5 { averageGrade = "B+"}
    else if average >= 3.0 { averageGrade = "B"}
    else if average >= 2.5 { averageGrade = "C+"}
    else if average >= 2.0 { averageGrade = "C"}
    else if average >= 1.5 { averageGrade = "D+"}
    else if average >= 1.0 { averageGrade = "D"}
    else if average >= 0.5 { averageGrade = "F"}
    
    return averageGrade
}

func gradeToSum(grade: String) -> Double {
    let gradeAplus: Double = 4.5
    let gradeA0: Double = 4.25
    let gradeBplus: Double = 3.75
    let gradeB0: Double = 3.25
    let gradeCplus: Double = 2.75
    let gradeC0: Double = 2.25
    let gradeDplus: Double = 1.75
    let gradeD0: Double = 1.25
    let gradeF: Double = 0.5
    
    var totalScore: Double = 0.0
    
    let inputGrade: String = grade
    
    
    if inputGrade == "A+" {
        totalScore += gradeAplus
    } else if inputGrade == "A" {
        totalScore += gradeA0
    }  else if inputGrade == "B+" {
        totalScore += gradeBplus
    } else if inputGrade == "B" {
        totalScore += gradeB0
    } else if inputGrade == "C+" {
        totalScore += gradeCplus
    } else if inputGrade == "C" {
        totalScore += gradeC0
    } else if inputGrade == "D+" {
        totalScore += gradeDplus
    } else if inputGrade == "D" {
        totalScore += gradeD0
    } else if inputGrade == "F" {
        totalScore += gradeF
    } else {
        print("잘못된 입력입니다.")
    }
    return totalScore
}

avarageGrade(subject1: "A+", subject2: "B", subject3: "A", subject4: "B+", subject5: "C")

//윤년 구하기 문제(년도를 받아서 윤년인지 아닌지 판단하는 함수)
// 윤년(leap year) - 4로 나누어 떨어짐
// 이중 100으로 나누어 떨어지면 평년
// 이중 400으로 나누어 떨어지면 윤년


// if문 Logic 조건 연산자를 이용한  해결
func leapyearCalculate(input year: Int) -> Bool {
    let inputYear = year
    var isLeapYear: Bool
    
    if (inputYear % 4 == 0) && !(inputYear % 100 == 0) || (inputYear % 400 == 0) {
        isLeapYear = true
    } else {
        isLeapYear = false
    }
    return isLeapYear
}


// if문을 이용한 문제 해결
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

let testYear1: Bool = leapyearCalculate(input: 1988)
let testYear2: Bool = leapyearCalculate(input: 2000)
let testYear3: Bool = leapyearCalculate(input: 2004)


//세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false, 둘 다 아니면 에러를 발생시키는 함수를 작성하세요.
func checkMulAndSignOfInteger(num1: Int, num2: Int, num3: Int) -> Bool {
    var isPositiveNumber: Bool
    var result: Int = 0
    result = num1 * num2 * num3
    if result > 0 {
        isPositiveNumber = true
    } else {
        isPositiveNumber = false
    }
    return isPositiveNumber
}

checkMulAndSignOfInteger(num1: 32, num2: 10, num3: -8)
checkMulAndSignOfInteger(num1: 32, num2: 10, num3: 8)
checkMulAndSignOfInteger(num1: 32, num2: 10, num3: 0)
