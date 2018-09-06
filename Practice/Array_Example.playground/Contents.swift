//: Playground - noun: a place where people can play

import UIKit

//: Array: 배열은 번호(index)와 번호에 대응하는 data들로 이루어진 자료 구조. 배열에는 같은 종류의 data들이 순차적으로 저장.
//:        갑의 번호가 곧 배열의 시작점으로부터 값이 저장되어 있는 상대적인 위치가 됨

//: ## Array문법
//: ### 기본 표현
//: Array<Eement> 로 Array Type을 나타냄.// Element는 array에 저장할 수 있는 type
//:  축약 문법 : [Element]
var someInts: [Int] = [Int]()
var somInts2: Array<Int> = Array<Int>()

//: ### Array Literal
//: 배열 리터럴 문법은 대괄호[]를 사용함.

var someInts3: [Int] = [1, 2, 3, 4]
someInts3 = []

//: ### 배열 Element가져오기
//: index를 통해 배열의 값을 가져올 수 있다.
//: index는 0부터 시작됨.
var someInts4: [Int] = [1, 2, 3, 4]
print("\(someInts4[0])")
print("\(someInts4[3])")

//: ### 배열 추가 기능
//: 배열의 element 갯수
someInts4.count
//: 빈 배열 확인
someInts4.isEmpty
//: element 추가
someInts4.append(5)
//: element 삽입
someInts4.insert(0, at: 0)
//: element 삭제
someInts4.remove(at: 5)
someInts4
