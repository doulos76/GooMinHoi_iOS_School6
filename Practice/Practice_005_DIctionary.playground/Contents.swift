//: Playground - noun: a place where people can play

import UIKit

var developmentProgram: [String: Any] = ["study": "OOP", "manPower": 3, "algorithm": "sort", "projectName": "k-12"]
// 딕셔너리의 Element갯수
developmentProgram.count

// 빈 배열 확인
developmentProgram.isEmpty

// element 추가
developmentProgram.updateValue("MVC", forKey: "development method theory")
print(developmentProgram)

// element 삭제
developmentProgram.removeValue(forKey: "algorithm")
print(developmentProgram)

// Down casting "as"
var person:[String : Any] = ["name" : "joo", "age": 20, "isSingle" : true]
let name1 = person["name"]
type(of: name1)
let name2 = person["name"] as! String
type(of: name2)

//as로 다운 캐스팅을 할 때 캐스팅이 실패할 확률이 있기 때문에 옵셔널로 지정이 됨.
// 때문에 ? 또는 !를 붙여야 함.

//Dictionary Example
func dicTest()
{
    // 기본 딕셔너리
    var dic: [String : Any] = ["name": "joo", "age": 20, "job": "Developer", "isSingle": true]
    
    // 딕셔너리 추가
    dic.updateValue("address", forKey: "Seout")
    // 딕셔너리 수정
    dic.updateValue("name", forKey: "winman")
    // 삭제
    dic.removeValue(forKey: "isSingle")
    
    // 값 불러오기
    let introduce: String = "제 이름은" + (dic["name"] as! String) + "입니다."
    let doubleAge = (dic["age"] as! Int) * 2
}

dicTest()





























