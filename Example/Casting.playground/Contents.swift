//: Playground - noun: a place where people can play

import UIKit

// Down casting  "as"

var person: [String: Any] = ["name": "joo", "age": 20, "isSingle": true]
let name1 = person["name"]
print(type(of: name1))
let name2 = person["name"] as! String
print(type(of: name2))
let name3 = person["name"] as? String
print(type(of: name3))

// as로 Downcasting할 때 casting이 실패할 확률이 있기때문에 optional로 지정이 됨.
// 때문에 ? or !를 붙여야 함.

// Dictionalry Example

func dicTest() {
  // Basic Dictionary
  var dic: [String: Any] = ["name": "joo", "age": 20, "job": "Developer", "isSingle": true]
  
  // Add Dictionary
  dic .updateValue("address", forKey: "Seoul")
  // Modify Dictionary
  dic.updateValue("name", forKey: "winman")
  // Delete Dictionary
  dic.removeValue(forKey: "isSingle")
  
  // load value
  let introduce: String = "제 이름은" + (dic["name"] as! String) + "입니다."
  let doubleAge = (dic["age"] as! Int) * 2
}

dicTest()


