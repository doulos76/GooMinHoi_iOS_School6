//: Playground - noun: a place where people can play

import UIKit

// 기본구조
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var framerate = 0.0
    var name: String?
}

struct Resolution {
    var width = 0
    var height = 0
}

// 인스턴스
let someVideoMode: VideoMode = VideoMode()
let someResolution: Resolution = Resolution()

// Propertiies 접근
print("VideoMode is \(someVideoMode.resolution.width)")
print("Resolution is \(someResolution.width)")

// Initialization(초기화)
//  갖고 있는 모든 property에 초기값을 지정해야 함.
// Initialization is the process of preparing an instance of a class, structure, or enumeration of use
// "초기화는 클래스, 구조체, 열거형의 인스턴스를 만들기 위한 준비고정으로 사용됨."
// 초기화의 결과물 : instance
// 직전에 해야 할 일 :  initialization

// 초기화
// 인스턴승 설정된 속성의 초기값을 설정과 초기화하는데 목적이 있다.
// 클래스 및 구조체는 인스턴스로 만들어 질 때 모든 프로퍼티는 적절한 초기값으로 모두 초기화 해야 한다.
// 구조체는 자동으로 memberwise initializer가 만들어짐.

// class vs struct
// class는 참조 타입이며, struct는 값 타입
// classㄴ는 상속을 통해 부모클래스의 특성을 상속받을 수 잇음.
// class는 type casting을 사용할 수 있다. (structure 불가)
//structure의 프로퍼티는 instance가 var를 통해서 만들어야 수정
//class 는 reference counting을 통해 인스턴스의 해제를 계산함.
//class는  deinitializer를 사용할 수 있음

var name: String = "joo"
var reName: String = name
reName = "wing"
name

class Person {
    var name: String
    var age: Int
    func eat() {
        print("집밥을 먹다")
    }
    init() {
        self.name = "Unknown"
        self.age = 0
    }
}
let num1: Int = 5
let person: Person = Person()
let num2 = num1
let person2: Person = person
person === person2 ? true : false

class Student: Person {
    
    override init() {
        super.init()
    }
    
    override func eat() {
        print("급식읆 먹다")
    }
    
}

class UniversityStudent: Student {
    override init() {
        super.init()
    }
    
    override func eat() {
        print("학식을 먹다")
    }
}


