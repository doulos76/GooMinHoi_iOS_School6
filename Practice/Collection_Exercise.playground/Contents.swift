//: Playground - noun: a place where people can play

import UIKit
/*
//배열

//Level 1
//시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기
//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수
//딕셔너리에 있는 모든 데이터 출력하는 함수 >> 데이터: ["name":"joo", "age":20, "job":"Developer"]

//Level 2
//정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수
//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]

//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수

//배열

//Level 1
//시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기
func intermediatedNumberArray(from num1: Int, to num2: Int) -> [Int] {
//    let inputNum1 = num1
//    let inputNum2 = num2
    if num1 > num2 {
        print("첫번째 수가 두번째 수보다 작게, 다시 입력해 주세요.")
        return []
    }
    var arr: [Int] = [Int]()
    for item in num1...num2 {
        arr.append(item)
    }
    print(arr)
    return arr
}
// 실행 결과
intermediatedNumberArray(from: 3, to: 7)    // >>>[3, 4, 5, 6, 7]
intermediatedNumberArray(from: 6, to: 3)    // >>> 첫번째 수가 두번째 수보다 작게, 다시 입력해 주세요.



//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수

let sampleIntArr: [Int] = [1, 2, 10, 5, 3, 2]   // 입력을 위한 Sample Integer Array

func sumOfIntArray(arr: [Int]) -> Int {
    var sum: Int = 0
    let inputArray: [Int] = arr

    for num in 0 ..< inputArray.endIndex {
        sum += inputArray[num]
    }
    return sum
}
// 결과값 확인
sumOfIntArray(arr: sampleIntArr)

//딕셔너리에 있는 모든 데이터 출력하는 함수 >> 데이터: ["name":"joo", "age":20, "job":"Developer"]

let sampleDic:[String : Any] = ["name":"joo", "age":20, "job":"Developer"]

//print(sampleDic)

func printDictionary(dic: Any) {
    print(dic)
}

printDictionary(dic: sampleDic) // 결과 >>> ["job": "Developer", "name": "joo", "age": 20]

//Level 2
//정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수

let sampleIntegerArray: [Int] = [1, 2, 3, 3, 4, 7, 6, 8, 8, 10]   // 입력을 위한 Sample Integer Array

/// 정수 타입의 배열을 받아서 배열안의 중복된 수를 제거 하고 제거된 배열을 반환하는 함수
///
/// - Parameter arr: 정수형 배열
/// - Returns: 중복된 수 제거된 배열
func repetitionRemovial(arr: [Int]) -> [Int] {
    var inputArray: [Int] = arr                     // 입력 배열
    var tempSet: Set<Int> = []                      // 중복된 element를 제거하고 저장할 Set
    //inputArray.sorted()                           // 배열을 정렬함, 초기엔 필요성을 느꼈으나, 없어도 기능상 문제 없어서 주석으로 막음
    for i in 0 ..< inputArray.endIndex {            // 첫번째 항목부터 다음 항목을 비교하는 구문
        for j in 0 ..< inputArray.endIndex {
            if inputArray[i] == inputArray[j] {
                tempSet.insert(inputArray[i])       // 항목이 같을 경우 tempSet에 저장
            }
        }
    }
    let resultArray: [Int] = tempSet.sorted()       // Set 자료형을 정렬하여 Array형으로 바꾼후 결과값을 저장
    return resultArray                              // 결과 값을 넘겨줌.
}

// 결과 확인
repetitionRemovial(arr: sampleIntegerArray)


//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]

let sampleIntegerArrayForCombination: [Int] = [1, 2, 3]
//let sampleIntegerArrayForCombination: [Int] = [1, 2, 3]
//for number in sampleIntegerArrayForCombination {
//    print(number)

//

//
//func combinationArray(arr: [Int]) -> [Int]
//{
//    var combinatedArray: [Int] = []
//
//    return combinatedArray
//}
//
//func permutationArray(arr: [Int]) -> [Int] {
//    var inputArray: [Int] = arr
//    //var permutatedArray: [Int]  = inputArray
//    var elementArray: [Int] = []
//    for i in inputArray
//    {
//        for
//        elementArray.append(i)
//        elementArray.contains(<#T##element: Int##Int#>)
//        print(elementArray)
//    }
//    return elementArray// permutatedArray
//}
//



//
//func combinationArray(arr: [Int]) -> [Int] {
//    var inputArray: [Int] = sampleIntegerArrayForCombination
//    var combinatedArray: [Int] = []
//    var elementArray: [Int] = []
//
//    for i in 0 ..< inputArray.count
//    {
//        for j in 1 ... 2
//        {
//            combinatedArray[i]
//            if inputArray[i] != inputArray[j]
//            {
//                elementArray.append(inputArray[i])
//                elementArray.append(inputArray[j])
//            }
//
//            combinatedArray.append(elementArray[1])
//        }
//    }
//    return combinatedArray

//
//func combinationArray(arr: [Int]) -> [Int] {
//    var inputArray: [Int] = arr
//    var resultArray: [Int] = []
//    inputArray.sorted()
//    for i in 0 ..< inputArray.endIndex {
//        var elementArray: [Int] = []
//        if elementArray.count <= 2 {
//            elementArray.append(inputArray[i])
//
//            print(elementArray)
//
//            for j in 0 ..< inputArray.endIndex {
//                if (elementArray.count <= 2) {
//                    elementArray.append(inputArray[j])
//                    elementArray.sorted()
//                    print(elementArray)
//
//                }
//            }
//        }
//    }
//
//
//
//    return resultArray
//}



//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수


*/
//Level 1
//시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기

////시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기
//
//func makeList(startNum: Int, endNum: Int) -> [Int]
//{
//    var returnList:[Int] = []
//    for n in startNum...endNum
//    {
//        returnList.append(n)
//    }
////    var valueNum: Int = startNum
////    while valueNum < endNum {
////        returnList.append(valueNum)
//    return returnList
//}


//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수
//
////정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수

//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수
//
////정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수
//let sampleArrayForSum: [Int] = [1, 2, 3, 4, 5]
//
//func sum(of list:[Int]) -> Int
//{
//    var result: Int = 0
//    for num in list {
//        result += num
//    }
//    return result
//}
//sum(of: sampleArrayForSum)
//
//
////딕셔너리에 있는 모든 데이터 출력하는 함수 >> 데이터: ["name":"joo", "age":20, "job":"Developer"]
//func printDic(_ dictionary:[String: Any])
//{
//    for (key, value) in dictionary
//    {
//        print(key, value, "이건 튜플아니에요")
//    }
//}
//printDic(["name":"joo", "age":20, "job":"Developer"])
//
//
////Level 2
////정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수
//func removeDuplicate(of list:[Int]) -> [Int]
//{
//    var resultList: [Int] = []
//    for n in list
//    {
//        if !resultList.contains(n) {
//            resultList.append(n)
//        }
//    }
//    return resultList
//}
//
////정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
////>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]
//func seperate(list: [Int]) -> [[Int]]
//{
//    var resultList: [[Int]] = []
//    for n in 0..<list.count
//    {
//        let firstV = list[n]
//        for i in n+1..<list.count
//        {
//            let secondV = list[i]
//            resultList.append([firstV, secondV])
//        }
//    }
//    return resultList
//}
//



//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
////Level 3
////정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x) 
//  (정렬의 효율은 보지 않습니다.)





//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수


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
    var key: String = ""
    var value: Any
    
    for (key, value) in dic {
        print(key, value)
    }
}
let sampelDic: [String: Any] = ["name":"joo", "age":20, "job":"Developer"]
printDictinary(of: sampelDic)

//Level 2
//정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수
//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]

//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수




















