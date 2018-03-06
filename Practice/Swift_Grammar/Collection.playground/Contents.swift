//: Playground - noun: a place where people can play
// Swift 문법 정리
import UIKit

// Array

var someInts: [Int] = [1, 2, 3, 4]
someInts.count
someInts.isEmpty
someInts.append(5)
someInts.append(contentsOf: [1, 2, 3])
someInts.insert(0, at: 1)
someInts.remove(at: 0)
someInts

func arrayTest()
{
    var list:[String] = ["my", "name", "is", "a", "joo", "younmin"]
    list.append("입니다.")
    print("list 배열의 총 갯수는", list.count)
    print(list[3])
    list.remove(at: 3)
    list.insert("my introduce it my self.", at: 0)
    
    for text in list
    {
        print(text)
    }
}
arrayTest()

// Set

var someInts2: Set<Int> = [1, 2, 3, 4]
someInts2 = []
var someStrings: Set = ["Joo", "young"]

func setTest()
{
    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [2, 4, 6, 8]
    let primeDigits: Set = [2, 3, 5, 7]
    
    print("test======")
    //교집합
    let intersectList = oddDigits.intersection(evenDigits)
    print(intersectList)
    //교집합의 여집합
    let differenceList = oddDigits.symmetricDifference(primeDigits)
    print(differenceList)
    //합집합 & 정렬
    let unionList = oddDigits.union(evenDigits).sorted()
    print(unionList)
    // 차집합 & 정렬
    let subtractList = oddDigits.subtracting(primeDigits).sorted()
    print(subtractList)
}
setTest()

var airports: [String: String] = ["ICH": "인천공항", "CJU": "제주공항"]
print("\(airports["ICH"])")
print("\(airports["CJU"])")

airports.count
airports.isEmpty
airports.updateValue("New York", forKey: "JFK")
airports.updateValue("Incheon", forKey: "ICH")
//airports.remove(at: "CJU")
print(airports)

var person: [String: Any] = ["name": "joo", "age": 20, "isSingle": true]
let name1 = person["name"]
print(type(of: name1))
let name2 = person["name"] as! String
print(type(of: name2))

func dicTest()
{
    // 기본 딕셔너리
    var dic: [String: Any] = ["name": "joo", "age": 20, "job": "Developer", "isSingle": true]
    
    // 딕셔너리 추가
    dic.updateValue("address", forKey: "Seoul")
    // 딕셔너리 수정
    dic.updateValue("name", forKey: "winman")
    // 삭제
    dic.removeValue(forKey: "isSingle")
    
    // 값 불러오기
    let introduce: String = "제 이름은" + (dic["name"] as! String) + "입니다."
    let doubleAge = (dic["age"] as! Int) * 2
}

dicTest()




