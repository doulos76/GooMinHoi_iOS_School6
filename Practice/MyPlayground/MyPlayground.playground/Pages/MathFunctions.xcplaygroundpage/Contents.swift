//: [Previous](@previous)
// Mathmetics formular function
// 수학 함수 만들기 예제 - 기하학 도형의 면적 및 둘레를 계산하는 함수

import UIKit

// 상수 선언
let PI: Double = 3.141592
// 변수 선언
var length: Double = 0.0
var width: Double = 0.0
var height: Double = 0.0
var radius: Double = 0.0
var area: Double = 0.0
var perimeter: Double = 0.0
var circumference: Double = 0.0
var volume: Double = 0.0

///////////////////////////////////////////////////////////
// Class, 상속을 이용한 작성
// 직사각형
class Rectangle {
    let length: Double = 0.0
    let width: Double = 0.0
    
    func area(length: Double, width: Double) -> Double {
        let area = length * width
        return area
    }
    
    func perimeter(length: Double, width: Double) -> Double {
        let perimeter = (length + width) * 2
        return perimeter
    }
}

// 정사각형
class Square: Rectangle {
    func area(length: Double) -> Double {
        let result: Double = length * length
        return result
    }
    
    func perimeter(length: Double) -> Double {
        let result: Double = length * 4
        return result
    }
}

class rectangularSolid {
    let length: Double = 0.0
    let width: Double = 0.0
    let height: Double = 0.0
    
    func volume(length: Double, width: Double, height: Double) -> Double {
        let result: Double = length * width * height
        return result
    }
}



/////////////////////////////////////////////////////////////
//각각 함수를 이용한 작성

/// 정사각형 면적
/// 정사각형 면적 구하는 함수
/// - Parameter length: 정사각형 밑변 입력
/// - Returns: 정사각형 면적 출력
func squareArea(length: Double) -> Double {
    let area: Double = length * length
    return area
}

/// 정사각형 둘레
/// 정사각형의 둘레를 구하는 함수
/// - Parameter length: 정사각형 밑변 입력
/// - Returns: 정사각형 둘레값 출력
func squarePerimeter(length: Double) -> Double {
    let perimeter: Double = length * 4
    return perimeter
}

/// 직사각형의 넓이
/// 직사각형의 넓이를 구하는 함수
/// - Parameters:
///   - length: 길이
///   - width: 너비
/// - Returns: 직사각형의 넓이
func rectangleArea(length: Double, width: Double) -> Double {
    let area: Double = length * width
    return area
}

/// 직사각형의 둘레
/// 직사각혀의 둘레를 구하는 함수
/// - Parameters:
///   - length: 길이
///   - width: 너비
/// - Returns: 직사각형의 둘레
func retanglePerimeter(length: Double, width: Double) -> Double {
    let perimeter: Double = length * 2 + width * 2
    return perimeter
}


/// 원의 면적
/// 원으 면적을 구하는 함수
/// - Parameter radius: 반지름 입력
/// - Returns: 원의 면적 출력
func circleArea(radius: Double) -> Double {
    let area: Double = PI * radius * radius
    return area
}

/// 원의 둘레
/// 원의 둘레를 구하는 함수
/// - Parameter radius: 반지름
/// - Returns: 원의 둘레 출력
func circleCircumference(radius: Double) -> Double {
    let circumference: Double = 2 * PI * radius
    return circumference
}

/// 삼각형의 면적
/// 삼각형의 면적을 구하는 함수
/// - Parameters:
///   - length: 삼각형의 밑변 입력
///   - height: 삼각형의 높이 입력
/// - Returns: 삼각형의 면적 출력
func triangleArea(length: Double, height: Double) -> Double {
    let area: Double = (length * height) / 2
    return area
}

/// 사다리꼴의 면적
///
/// - Parameters:
///   - upside: 윗변의 길이
///   - base: 밑변의 길이
///   - height: 높이
/// - Returns: 사다리꼴의 면적 출력
func tripezoidArea(upside: Double, base: Double, height: Double) -> Double {
    let area: Double = (upside + base) * height / 2
    return area
}

/// 정육면체의 부피
/// 정육면체의 부피를 구하는 함수
/// - Parameter length: 한변의 길이 입력
/// - Returns: 정육면체의 부파 출력
func cubeVolume(length: Double) -> Double {
    let volume: Double = length * length * length
    return volume
}

/// 직육면체의 부피
/// 직육면체의 부피를 구하는 함수
/// - Parameters:
///   - lenght: 길이
///   - width: 너비
///   - height: 높이
/// - Returns: 정육면체의 부피를 출력
func rectangularSolidVolume(lenght: Double, width: Double, height: Double) -> Double {
    let volume: Double = lenght * width * height
    return volume
}

/// 원통의 부피
/// 원통의 부피를 구하는 함수
/// - Parameters:
///   - radius: 반지름
///   - height: 높이
/// - Returns: 원통의 부피
func circularcylinderVolume(radius: Double, height: Double) -> Double {
    let volume: Double = PI * radius * radius * height
    return volume
}

/// 구의 부피
/// 구의 부피를 구하는 함수
/// - Parameter radius: 구의 반지름
/// - Returns: 구의 부피
func sphereVolume(radius: Double) -> Double {
    let volume: Double = (PI * radius * radius * radius) * 4 / 3
    return volume
}

/// 원뿔의 부피
/// 원뿔의 부피를 구하는 함수
/// - Parameters:
///   - radius: 원뿔의 반지름
///   - height: 원뿔의 높이
/// - Returns: 원불의 부피
func coneVolume(radius: Double, height: Double) -> Double {
    let volume: Double = (PI * radius * radius * height) / 3
    return volume
}



var num1 = 8
var num2 = 10

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

print(num1, num2)
swap(&num1, &num2)
print(num1, num2)


//var index = 0
//func addInex(num1: Int, index: inout Int)
//{
//    if num1 > 10
//    {
//        index = index + 1
//    }
//}
//
//addInex(num1: 20)
//addInex(num1: 2)
//addInex(num1: 4)
//addInex(num1: 12)
//addInex(num1: 23)
//print(index)

var resultValue: Int = 0
func divide(num1: Int, num2: Int) throws -> Int
{
    if num2 == 0 {
        return -1 // or 에러가 발생하는 코드 입력
    }
    return num1 / num2
}

//divide(num1: 3, num2: 0)

///////////////////////////////////////////

func pass(num:Int) -> Int {
    return num
}

func getPI() -> Double {
    let pi: Double = 3.141592
    return pi
}

func sum(firstNum num1: Int, secondNum num2: Int = 5) -> Int {
    return num1 + num2
}

func passNum(_ num: Int) -> Int {
    return num
}

func swapTwoInts(lInt a: inout Int, rInt b: inout Int) {
    let temporearyA: Int = a
    a = b
    b = temporearyA
}

func calculator(num1: Int, num2: Int) -> (Int, Int) {
    let plus = num1 + num2
    let minus = num1 - num2
    
    return (plus, minus)
}

func printName() -> String {
    return "my name is youngmin"
}

func printName() {
    print("my name is youngmin")
}

func printName(name: String = "youngmin") {
    print("my name is \(name)")
}

func printName(explain str: inout String) -> String{
    str += "joo"
    return str
}
























