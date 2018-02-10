//: Playground - noun: a place where people can play

import UIKit
// Set
// Set은 같은 타입의 데이터가 순서없이 모여있는 자료 구조
// 각 항목의 순서가 중요치 않거나, 한번만 표시해야 하는 경우 배열대신 사용됨.

// Set 문법
// 기본 표현은 Set<Element>로 Set Type을 나타냄
// 여기에서 Element는 배열에 저장할 수 있는 타입
// Set은 Array와 다르게 축약 문법이 없다.
var someInts:Set<Int> = Set<Int>()


// Set 리터럴 사용
// Set Type으로 설정된 변수는 배열 리터럴을 이용해서 값을 설정할 수 있음.
// [값1, 값2, 값3]
// type을 지정하지 않으면 array임

var someInts2: Set<Int> = [1, 2, 3, 4]
someInts2 = []
var someStrings: Set = ["joo", "young"]

//Set Element가져오기
// Set은 순서가 정해져 있지 않기 때문에 for-in 구문을 통해 데이터를 가져와야 함.
// 순서는 정해져 있지 않지만 정렬을 통해 데이터를 원하는 순서대로 가져올 수 있음.
// Set을 정렬하면 return 값이 array임

func setTest()
{
    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [2, 4, 6, 8]
    let primeDigits: Set = [2, 3, 5, 7]
    
    print("test=============")
    // 교집합
    let intersectList = oddDigits.intersection(evenDigits)
    print(intersectList)
    // 교집합의 여집합
    let differenceList = oddDigits.symmetricDifference(primeDigits)
    print(differenceList)
    // 합집합 & 정렬
    let unionList = oddDigits.union(evenDigits).sorted()
    print(unionList)
    // 차집합 & 정렬
    let subtractList = oddDigits.subtracting(primeDigits).sorted()
    print(subtractList)
    
}

setTest()


