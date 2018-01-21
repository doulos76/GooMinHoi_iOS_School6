//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var someInts: Dictionary<String, [String]> = [String: [String]]()

var person:[String:Any] = ["name":"joo", "age":20, "isSingle":true]
let name1 = person["name"] //type은 Any
let name2 = person["name"] as! String //type은 String

//let age1 = person["age"] as? String

let age2 = person["age"] as! Int

//Dictionary
// 딕셔너리의 element갯수
person.count
//빈배열 확인
person.isEmpty
//element 추가
person.updateValue("job", forKey: "engineer")
//element 삽입
person.updateValue(21, forKey: "age")
//element 삭제
person.removeValue(forKey: "isSingle")
person.capacity
person.count

print(person)

func dicTest()
{
    // 기본 딕셔너리
    var dic: [String: Any] = ["name": "Joo", "age": 20, "job": "Developer", "isSIngle": true]
    
    //딕셔너리 추가
    dic.updateValue("adderess", forKey: "Seoul")
    //딕셔너리 수정
    dic.updateValue("name", forKey: "winman")
    //삭제
    dic.removeValue(forKey: "isSingle")
    
    
    //값 불러오기
    let introduce: String = "제 이름은" + (dic["name"] as! String) + "입니다."
    let doubleAge = (dic["age"] as! Int) * 2
    
    for (key, value) in dic {
        // 딕셔너리의 키값은 key 변ㅅ수에.
        // 딕셔너리의 value값은 value 변수에
        print("key값은 \(key) 이고", "값은 \(value)입니다.")
    }
}

dicTest()

