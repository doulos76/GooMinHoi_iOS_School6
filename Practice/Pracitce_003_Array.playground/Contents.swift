//: Playground - noun: a place where people can play

import UIKit
// array 문법
var someInts: [Int] = [Int]()
var someInts2: Array<Int> = Array<Int>()

// 배열 리터럴
var someInts3: [Int] = [1, 2, 3, 4]
someInts3 = []

// 배열 Element 가져오기
var someInts4: [Int] = [1, 2, 3, 4]
print("\(someInts4[0])")
print("\(someInts4[3])")

// 배열 추가 기능
// 배열의 element 갯수
someInts4.count
// 빈 배열 확인
someInts4.isEmpty
someInts3.isEmpty

// Element 추가
someInts4.append(5)
someInts4

// Element 삽입
someInts4.insert(0, at: 3)
someInts4

// Element 삭제
someInts4.remove(at: 3)
someInts4

func arrayTest()
{
    var list: [String] = ["my", "name", "is", "a", "joo", "youngmin"]
    list.append("입니다.")
    print("list배열의 총 갯수는", list.count)
    print(list[3])
    list.remove(at: 3)
    list.insert("my introduce it my self.", at: 0)
    
    for text in list
    {
        print(text)
    }
}

arrayTest()

var cities: [String] = ["seoul", "New Yort", "LA", "Santiago"]
// 배열 순회 탐색
//방법 1
let length = cities.count
for i in 0..<length {
    print("\(i)번째 배열 원소는 \(cities[i])입니다.")
}

// 방법2
for i in 0..<cities.count {
    print("\(i)번째 배열 원소는 \(cities[i])입니다.")
}

// 방법1 이 방법2 보다 유리함. 방법2의 경우  for-loop문이 반복될 때 마다 조건식을 반복하고, 실행 속도를 떨어뜨릴 수 있음
// 따라서 방법1 처럼 한 번만 읽어 별도의 변수나 상수에 크기를 저장해 놓고 사용하는 편이 좋음.

// 배열값의 순회 특성을 사용하여 탐색
for row in cities {
    print("배열 원소는 \(row)입니다.")
}

for row in cities {
    let index = cities.index(of: row)   // 배열의 인덱스를 확인하여 index 상수에 대입
    print("\(index!)배열 원소는 \(row)입니다.")
}

cities.append("Dubai")
cities.append(contentsOf: ["Sydney", "Hong Kong"])
print(cities)

var emptyRoom = [String](repeating: "None", count: 3)
var emptyRoom2 = Array(repeating: "Noone", count: 3)
var emptyRoom3: [String] = Array(repeating: "1", count: 3)


//Level 1
//시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기
func makeArrayBetween(start startNum: Int, andStop stopNum: Int) -> [Int] {
    var resultArray: [Int] = []
    for element in startNum...stopNum {
        resultArray.append(element)
    }
    return resultArray
}

makeArrayBetween(start: 3, andStop: 10)

//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수

let intArray: [Int] = [ 2, 4, 7, 10, 6, 8, 3]

func sumOfArrayElement(arr: [Int]) -> Int {
    var sum: Int = 0
    for element in arr {
        sum += element
    }
    return sum
}

sumOfArrayElement(arr: intArray)


//딕셔너리에 있는 모든 데이터 출력하는 함수 >> 데이터: ["name":"joo", "age":20, "job":"Developer"] -> 각각의 쌍으로 출력

let stringDic: [String : Any] = ["name":"joo", "age":20, "job":"Developer"]

func printDictionary(inputDictionary dic: [String : Any]) {
    for (key, value) in dic {
        print("\(key), \(value)")
    }
}

printDictionary(inputDictionary: stringDic)

//Level 2
//정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수
let intArrayContainRepeatValue: [Int] = [3, 7, 6, 6, 2, 3, 4, 11, 16, 23]

func arrayRejectRepeatElement(of array: [Int]) -> [Int]
{
    var resultArray: [Int] = []
    for row in array {
        if !resultArray.contains(row) {
            resultArray.append(row)
        }
    }
    return resultArray
}

arrayRejectRepeatElement(of: intArrayContainRepeatValue)


func makeArrayNotContainsRepeatValue(input arr: [Int]) -> [Int] {
    var tempSet: Set<Int> = []
    let arraylength: Int = arr.count
    for i in 0..<arraylength
    {
        for j in 0..<arraylength
        {
            if arr[i] == arr[j]
            {
                tempSet.insert(arr[i])
            }
        }
    }
    let resultArray: [Int] = tempSet.sorted()
    return resultArray
}

makeArrayNotContainsRepeatValue(input: intArrayContainRepeatValue)

//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]

//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]

let arrayNumEx2 = [1,2,3]
func makeMixArr(arrNum: Array<Int>) -> Array<Array<Int>>{
    var resultArr = Array<Array<Int>>()
    
    var count: Int = 0
    let subCount: Int = arrNum.count - 1
    
    for _ in 1...subCount{
        var tempArr = Array<Int>()
        for num in (count + 1)...subCount{
            tempArr = []
            tempArr.append(arrNum[count])
            tempArr.append(arrNum[num])
            
            resultArr.append(tempArr)
        }
        count += 1
    }
    return resultArr
}

makeMixArr(arrNum: arrayNumEx2)


func combinationArray(input inputArr: [Int]) -> [[Int]] {
    var resultArr: [[Int]] = []
    
    var count: Int = 0
    let subCount: Int = inputArr.count - 1
    
    for _ in 1...subCount {
        var tempArr: [Int]
        for num in (count + 1)...subCount {
            tempArr = []
            tempArr.append(inputArr[count])
            tempArr.append(inputArr[num])
            resultArr.append(tempArr)
        }
        count += 1
    }
    return resultArr
}

combinationArray(input: arrayNumEx2)




//func combinationOfArray(input intArray: [Int]) -> [[Int]] {
//    var inputArray: [Int] = intArray
//    var resultArray: [[Int]] = [[]]
//    var tempArray: [Int] = []
//
//    for element in inputArray {
//        for i in inputArray
//        {
//            if !tempArray.contains(element) {
//                tempArray.append(element)
//                print(tempArray)
//            }
//        }
//    }
//    return resultArray
//}






























//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수

