//: [Previous](@previous)

import Foundation

//inch to cm, cm to inch

// Function of inch to cm converter
func inchToCm(input inch: Double) -> Double {
    let result: Double = inch * 2.54
    return result
}

// Func of cm to inch converter
func cmToInch(input cm: Double) -> Double {
    let result: Double = cm / 2.54
    return result
}

//m2 to 평, 평 to m2
//평 to m2
func pyungToMeterSquare(input pyung: Double) -> Double {
    let result: Double = pyung * 3.3058
    return result
}

//m2 to 평
func meterSquareToPyung(input m2: Double) -> Double {
    let result: Double = m2 / 3.3058
    return result
}

//화씨 to 섭씨, 섭씨 to 화씨
// 화씨 to 섭씨
func fahrenheitToCelsius(input fahrenheit: Double) -> Double {
    let result: Double = (fahrenheit - 32) * 5 / 9
    return result
}

// 섭씨 to 화씨
func celsiusToFahrenheit(input celsius: Double) -> Double {
    let result: Double = celsius * 9 / 5 + 32
    return result
}

//데이터량(KB to MB, MB to GM)
// KB to MB
func kiloBytesToMegaBytes(input kiloBytes: Double) -> (Double, Double) {
    let resultInDec: Double = kiloBytes / 1000
    let resultInBin: Double = kiloBytes * 0.0009765625
    return (resultInDec, resultInBin)
}

// MB to KB
func megaBytesToKiloBytes(input megaBytes: Double) -> Double {
    let result: Double = megaBytes * 1000
    return result
}

// 시간(hhmmss)을 받으면 초단위로 변경, 초단위를 시간으로 변경
// ex) 11320 >> 4400초
// 시간 to 초
func timeToSec(input_6_number time: Int) -> Int {
    let hours = time / 3600
    let mins = hours / 60
    let secs = mins % 60
    
    let result: Int = hours * 3600 + mins * 60 + secs
    return result
}

timeToSec(input_6_number: 11320)

func changeToSecond(from time: Int) -> Int {
    var remainTime: Int = time
    let second: Int  = remainTime % 100
    remainTime = remainTime / 100
    let min: Int = remainTime / 100
    remainTime = remainTime / 100
    let hour: Int = remainTime % 100
    
    return (hour * 3600) + (min * 60) + second
    
}
// 초 to 시간

//<기초>
//1-a 이름(문자열)을 받아서 이름을 출력하는 함수
//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
//정수를 하나 입력받아서 제곱을 반환해주는 함수

//<응용 - 다중 입력, 반환>
//2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
//2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수
//2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
//2-d. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수

//<응용>
//부모님과 내 나이를 입력 후 그 나이차를 프린드 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)
//시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수

//<캐스팅>
//정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수
//정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)
//실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수

////////////////////////////////////////////////////////////////////////////////////////

//<기초>
//1-a 이름(문자열)을 받아서 이름을 출력하는 함수
func printName(name: String) {
    print("이름: \(name)")
}

//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
func printAge(age: Int) {
    print("나이: \(age)")
}

//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
func printProfile(name: String, address: String) {
    print("안녕하십니까? 반갑습니다.")
    print("저는 \(name)입니다.")
    print("저는 \(address)에 거주하고 있습니다.")
    print("만나게 되어 반갑습니다.")
}

//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
func halfOfInteger(input inputNum: Int) -> Double {
    let result: Double = Double(inputNum) / 2
    return result
}

halfOfInteger(input: 2)
halfOfInteger(input: 5)

//정수를 하나 입력받아서 제곱을 반환해주는 함수
func square(of inputNum: Int) -> Int {
    let result = inputNum * inputNum
    return result
}

square(of: 2)
square(of: 10)

//<응용 - 다중 입력, 반환>
//2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
func sum(input1 num1: Int, input2 num2: Int) -> Int {
    let sum: Int = num1 + num2
    return sum
}

//2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수
func sub(input1 num1: Int, input2 num2: Int) -> Int {
//    if num1 > num2 {
//       return num1 - num2
//    } else if num1 == num2 {
//        return 0
//    } else {
//        return num2 - num1
//    }
    let sub: Int = num1 - num2
    return sub
}


//2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
func mul(input1 num1: Int, input2 num2: Int) -> Int {
    let mul: Int = num1 * num2
    return mul
}

//2-d. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수
func div(input1 num1: Int, input2 num2: Int) -> Double {
    let div: Double = Double(num1) / Double(num2)
    return div
}


//<응용>
//부모님과 내 나이를 입력 후 그 나이차를 프린드 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)
func diffenenceOfParentsAndMe(Parent parentsAge:Int, I myAge:Int) -> Int {
    let difference: Int = parentsAge - myAge
    return difference
}

//시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수
func averageScores(subject1: Int, subject2: Int, subject3: Int, subject4: Int) -> Double {
    let average: Double = Double(subject1 + subject2 + subject3 + subject4) / 4
    return average
}

//<캐스팅>
//정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수
func converterOfIntegerToRealNumber(intNum: Int) -> Double {
    let result: Double = Double(intNum)
    return result
}
converterOfIntegerToRealNumber(intNum: 34)
type(of:converterOfIntegerToRealNumber(intNum: 34))

//정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)
func sumOfTwoNumbers(_ num1: Int, _ num2: Int) -> Int {
    let sum: Int = num1 + num2
    return sum
}
sumOfTwoNumbers(1, 3)


//실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수

func convertionOfIntToDouble(doubleNumber: Double) -> Int {
    let doubleNum: Double = doubleNumber
    let intNum: Int = Int(doubleNum)
    let difference = doubleNum - Double(intNum)
    if difference >= 0.5 {
        return Int(doubleNum + 1)
    } else {
        return Int(doubleNum)
    }
    
}

convertionOfIntToDouble(doubleNumber: 341.5)
convertionOfIntToDouble(doubleNumber: 341.3)


//func converterOfIntegerTodoubleNumber(Double doubleNumber: Double) -> Int {
//    var result = doubleNumber
//    result = Double(round(1 * doubleNumber) / 1)
//    return Int(result)
//}
//// modulus %
//converterOfIntegerTodoubleNumber(Double: 34.7)
//converterOfIntegerTodoubleNumber(Double: 23.3)
