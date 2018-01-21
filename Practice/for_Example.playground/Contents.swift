//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 3, 4, 5]

for number  in numbers
{
    print("\(number)")
}

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// _ :  와일드 카드
//
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
    //print(answer)
}

//print(answer)


/// 구구단 연산
///
/// - Parameter times: 몇 단
func timesTable(_ times: Int) {
    print("\(times)단 출력")
    for time in 1 ... 9 {
        print("\(times) × \(time) = \(times * time)")
    }
}

// 실행
timesTable(2)

// factorial
// 3 : 3 x 2 x 1 >>> 6
// 5 : 5 x 4 x 3 x 2 x 1 >>> 120
func factorial(num: Int) -> Int {
    var result: Int = 1
    for count in 1 ... num {
        result *= count
    }
    return result
}

factorial(num: 5)

func factorialInWhile(num: Int) -> Int {
    var inputNum = num
    var result: Int = 1
    while inputNum > 0 {
        result *= inputNum
        inputNum -= 1
    }
    return result
}

factorialInWhile(num: 5)

// 알고리즘 문제
// 입력된 수 : 짝수라면 / 2
//          홀수라면 * 3 + 1
// 1이 될 때까지 반복
// 몇 번 만에 되는지?

func collatzConjecture(num: Int) -> Int {
    var inputNum: Int = num
    var count: Int = 0
    while inputNum != 1 && count <= 500 {
        if inputNum % 2 == 0 {
            inputNum /= 2
        } else {
            inputNum = inputNum * 3 + 1
        }
        count += 1
    }
    if count > 500 {
        return -1
    } else {
        return count
    }
}

collatzConjecture(num: 99293682342734820)
collatzConjecture(num: 6)
collatzConjecture(num: 27)
collatzConjecture(num: 77)

func collatz(num: Int) -> Int {
    var inputNum: Int = num
    var count: Int = 0
    var inputNumArray: Array<Int> = Array<Int>()
    while inputNum != 1 {
        if inputNum % 2 == 0 {
            inputNum /= 2
        } else {
            inputNum = inputNum * 3 + 1
        }
        
        inputNumArray.append(inputNum)
        count += 1
    }
    if count >= 500 {
        return -1
    }
    print("Collatz Conjecture >>> input값: \(num) >>>, 실행단계수\(count), >>> 실행 과정: \(inputNumArray)")
    return count

}

//collatz(num: 99293682342734820)
collatz(num: 6)
//collatz(num: 27)
//collatz(num: 77)

// Harshad 수
// 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 함.
// 예: 18 >>> 1 + 8 = 9, 18 % 9 = 0 so 18 is harshad
// return bool

// while 은 ~ 한 동안에 반복
// if문 : 예외 처리


/// harshad 수 인지 판별하는 함수
///
/// - Parameter num: 정수
/// - Returns: harshad수 이면 true, 아니면 false
func isHarshad(num: Int) -> Bool {
    let inputNum: Int = num
    var result: Bool = false
    var sumOfPositionalNumber: Int = 0 // 자릿수의 합 임시 보관

    if inputNum > 0 {
        sumOfPositionalNumber = addAllPositionalNumber(of: inputNum)
        if inputNum % sumOfPositionalNumber == 0 {
            result = true
        } else {
            result = false
        }
    }
    return result
}

func addAllPositionalNumber(of num:Int) -> Int
{
    var tempNum: Int = num
    var sumNum: Int = 0
    while tempNum > 0 {
        let lastNum: Int = tempNum % 10
        sumNum += lastNum
        tempNum /= 10
    }
    return sumNum
}

isHarshad(num: 18)


func addAll(num: Int) -> Int {
    var tempNum: Int = num
    var sum: Int = 0
    while tempNum > 0 {
        let lastNum: Int = tempNum % 10
        sum += lastNum
        tempNum /= 10
    }
    return sum
}

addAll(num: 1234)



//func q1(firstN: Int, secondN: Int) -> Int
//{
//    var resultNum: Int = 1
//    for _ in 1...secondN {
//        resultNum *= firstN
//    }
//    return resultNum
//}
//
//func printEvenNum(num: Int) {
//    for n in 1...num {
//        if n % 2 == 0 {
//            print(n)
//        }
//    }
//}

//func fibonacci(num: Int) -> Int {
//    var firstNum: Int = 0
//    var secondNum: Int = 1
//
//    for _ 1 ... num {
//        var temp = firstNum + secondNum
//        firstNum = secondNum
//        secondNum = temp
//    }
//
//    return firstNum
//}



//정수 하나를 입력받아서 1부터 입력받은 수까지의 모든 수를 더한값을 반환해주는 함수 (ex: 10 >>> 55)
/// 1부터 입력 받은 양의 정수까지의 합을 반환
///
/// - Parameter num: 입력 정수
/// - Returns: 1 부터 입력 정수까지의 합
func sum(to num: Int) -> Int {
    var sum: Int = 0
    for number in 1...num {
        sum += number
    }
    return sum
}
/// 결과 값 확인
sum(to: 10) // 55

//정수 두개를 입력받아서 첫번째 수를 두번째 수의 횟수 만큼 곱한 값을 반환해주는 함수 (ex: 2,3 >>> 8 /// 3,3 >>> 27)
/// 정수 2개를 입력 받아 첫번째 수의 두번째 제곱수를 반환하는 함수
///
/// - Parameters:
///   - num1: 밑수
///   - num2: 입력 제곱수
/// - Returns: 밑수의 입력 제곱수
func exponentiation(base num1: Int, repeat num2: Int) -> Int {
    let tempNum: Int = num1
    var result: Int = 1
    for _ in 1 ... num2 {
        result  *= tempNum
    }
    return result
}
/// 결과 값 확인
exponentiation(base: 2, repeat: 3)  // 8

//정수를 받아서 각 자리의 합을 반환해주는 함수(ex: 312 >>> 6)

/// 입력된 정수의 각 자리수의 합을 반환하는 함수
///
/// - Parameter num: 입력 정수
/// - Returns: 입력된 각 정수의 자릿수의 합
func sumOfAllPositionalNumber(of num: Int) -> Int {
    var tempNum: Int = num
    var sum: Int  = 0
    while tempNum > 0 {
        sum += tempNum % 10
        tempNum /= 10
    }
    return sum
}
//// 결과값 확인
sumOfAllPositionalNumber(of: 12342)     // 12


//정수 하나를 받아서 1부터 정수까지의 숫자중 짝수를 모두 출력해주는 함수
/// 1부터 입력된 정수까지에서 짝수만 출력하는 함수
///
/// - Parameter number: 입력 정수
func printEvenNumber(of number: Int) {
    for input in 1...number {
        if input % 2 == 0 {
            print(input)
        }
    }
}

/// 결과값 확인
printEvenNumber(of: 10)
//2
//4
//6
//8
//10


//100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
/// 100이하의 자연수 중 3과 5의 공배수를 출력하는 함수
func printMultipleNumberOfThreeAndFive() {
    for num in 1 ..< 100 {
        if num % 3 == 0 && num % 5 == 0 {
            print(num)
        }
    }
}

// 결과 값 확인
printMultipleNumberOfThreeAndFive()
//15
//30
//45
//60
//75
//90


//정수 하나를 받아서 그 정수의 약수를 출력하는 함수
// 약수 : 어떤 자연수를 나누었을 때 나머지가 0이 되는 자연수를 그 자연수의 약수라고 한다.

/// 입력된 정수의 약수를 출력하는 함수
///
/// - Parameter number: 입력 정수
func printDivisor(of number: Int) {
    if number > 0 {
        print("입력된 수 : \(number)")
        print("\(number)의 약수는 ...")
        for input in 1 ... number {
            if number % input == 0 {
                print(input)
            }
        }
    } else {
        print("잘못 입력 하셨습니다. 0보다 큰 양의 정수를 입력하세요. ex) 7, 12, 100, ...")
    }
}

printDivisor(of: 76)

//2 이상의 정수를 입력받아, 그 수가 소수인지 아닌지를 판별하는 함수
// 소수 : 1 보다 큰 자연수 중에서 1과 자신만을 약수로 가진 수


/// 2 이상의 정수중 소수인지 판별하는 함수
///
/// - Parameter number: 입력 정수
/// - Returns: 소수인지 판별하는 Bool값
func isPrimeNumber(number: Int) -> Bool {
    var isPrimeNumber: Bool = false // 소수인지 여부 값, default = false
    var count: Int = 0      // 약수의 갯수
    for input in 2 ... number {
        if number % input == 0 {
            count += 1
        }
    }
    // 약수의 갯수 판별
    if count < 3 {
        isPrimeNumber = true
    }
    return isPrimeNumber
}

isPrimeNumber(number: 11)

//정수 하나를 입력받아서 입력받은 수 번째 피보나치 수를 반환하는 함수를 작성하세요. (ex: 3 >>> 2, 7 >>> 13)
// fibonicci Numbers : 1 1 2 3 5 8 13 21 34 55 89 144

/// 정수 하나를 입력 받아서 입력받ㅇ느 수 번째 피보니치 수를 반환하는 함수
///
/// - Parameter num: 입력 정수
/// - Returns: 피보나치 수
func fibonacciNumbers(num: Int) -> Int {
    //var inputNum: Int = num
    var fn = 0  // 첫번째 수 초기화
    var fnPlusOne = fn + 1  // 두번째 수 초기화
    var fnPlusTwo = 0   // 세번째 수 초기화
    
    var fibonacciNumbersArray: Array<Int> = Array<Int>()  // fibonacii 수열을 보기위한 배열 선언
    
    for _ in 1 ... num {
        fnPlusTwo = fn + fnPlusOne
        fn = fnPlusOne
        fnPlusOne = fnPlusTwo
        
        fibonacciNumbersArray.append(fn)    // 배열 맴버 추가
        
    }
    print(fibonacciNumbersArray)
    return fn
}


// 결과 확인
fibonacciNumbers(num: 3)    //[1, 1, 2]
fibonacciNumbers(num: 7)    //[1, 1, 2, 3, 5, 8, 13]
fibonacciNumbers(num: 8)    //[1, 1, 2, 3, 5, 8, 13, 21]
fibonacciNumbers(num: 9)    //[1, 1, 2, 3, 5, 8, 13, 21, 34]


// 강사님 코드
func q6(num: Int) -> Int
{
    var firstNum: Int = 0
    var secondNum: Int = 1
    
    for _ in 1...num
    {
        let temp = firstNum + secondNum
        firstNum = secondNum
        secondNum = temp
        print(firstNum, separator: " ", terminator: " ")
    }
    return firstNum
}

q6(num: 6)
//q6(num: 3)











































