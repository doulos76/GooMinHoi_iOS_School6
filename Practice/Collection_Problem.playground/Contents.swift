//: Playground - noun: a place where people can play

import UIKit

//Level 1
//시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기
func makeArray(from startNumber: Int, endNumber: Int) -> [Int] {
    var resultArray: [Int] = []
    for element in startNumber...endNumber {
        resultArray.append(element)
    }
    return resultArray
}

makeArray(from: 3, endNumber: 7)

//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수
func sumOfElements(of arr: [Int]) -> Int {
    var sum: Int = 0
    for number in arr {
        //print(number) // arr 어레이에서 각 element를 number에 순차적으로 넣음
        //print(arr[number]) // --> 잘못된 표현
        sum += number
    }
    return sum
}

sumOfElements(of: [1, 5, 3, 4, 5])

//딕셔너리에 있는 모든 데이터 출력하는 함수 >> 데이터: ["name":"joo", "age":20, "job":"Developer"]
func printDictinary(of dic:[String: Any]) {
    for (key, value) in dic {
        print(key, value)
    }
}
let sampelDic: [String: Any] = ["name":"joo", "age":20, "job":"Developer"]
printDictinary(of: sampelDic)

//Level 2
//정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수
//for removeRepeatNumber

//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]

//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
//  (정렬의 효율은 보지 않습니다.)
//func selectionSort(_ list: [Int]) -> [Int]
//{
//    var sortedList: [Int] = []  // 결과 값을 저장할 배열 선언 및 최기화
//
//    // 최소값을 담을 변수 선언
//    var minValue: Int = 0
//    var minIndex: Int = 0
//    for selectedNumber in 0..<list.count {
//        if selectedNumber < minValue {
//            minValue = selectedNumber
//            print(minValue)
//        }
//
//    }
//
//
//
//
//    return sortedList   // 결과 값 반환

//
//let list: [Int] = [3, 7, 2, 4, 6, 1, 5]
//var minValue: Int = 0
//var minIndex: Int = 0
//for var selectedNumber in list
//{
//    minValue = selectedNumber
//    if selectedNumber < minValue {
//        minValue = selectedNumber
//        print(minValue)
//    }










//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수


// 강사님 코드
//// 강사님 코드
// 강사님 코드
//// 강사님 코드
//let list1: [Int] = [3, 7, 2, 4, 6, 1, 5]
//func selectionSort(list:[Int]) -> [Int]
//{
//    var muList = list
//    for originIndex in 0..<list.count
//    {
//        var minimumNum = list[originIndex]
//        var minimumIndex = originIndex
//        //최소값 찾기
//        for selecIndex in (originIndex + 1)..<list.count
//        {
//            let selecteNum = list[selecIndex]
//            if minimumNum < selecteNum
//            {
//                minimumNum = selecteNum
//                minimumIndex = selecIndex
//            }
//        }
//
//        if originIndex != minimumIndex
//        {
//            muList.swapAt(originIndex, minimumIndex)
//        }
//    }
//    return muList
//}




let names: [String?] = Array<String?>(repeatElement(nil, count: 10))
/// 배열의 길이를 처음에 10으로 잡아주고, 각 공간을 nil로 채움












