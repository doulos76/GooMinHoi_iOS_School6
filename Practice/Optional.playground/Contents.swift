//: Playground - noun: a place where people can play
// Optional
import UIKit

// nil이란?
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    func run() {
        print("run!!!")
    }
}

//let person1: Person = Person(name: "joo")
//print(person1.name)
// "joo"

//let person2: Person
//print(person2.name)
// 결과
//Playground execution failed:
//
//error: Optional.playground:12:7: error: constant 'person2' used before being initialized
//print(person2.name)
//^
//
//Optional.playground:11:5: note: constant defined here
//let person2: Person
//=> 변수에 선언후 초기화를 하지 않은 상태는 nil임.

//var person3: Person!
////person3 = Person()
////person3.run()
//var person4: Person!
////person4 = Person()
//person4 = Person(name: "James")
//person4.run()


//var person: Person?
//person = Person(name: "abraham")
//person?.run()
//person!.run()



/// Forced Unwrapping
func testFunc(optionalStr: String?) {
    if optionalStr != nil {
        let unwrapStr: String = optionalStr!
        print(unwrapStr)
    }
}


testFunc(optionalStr: nil)

//testFunc(optionalStr: "abc")

//testFunc(optionalStr: "")

/// Optional Binding
// 강제 해제를 편리하게 하기 위해 만든 방법
func testOptionalFunc(optionalStr: String?) {
    if let unwrapStr: String = optionalStr {
        print(unwrapStr)
    }
}

// Optional Binding - example
//func isNumber(inputNum: String) -> Bool {
//    if let firstNumber = Int(inputNum) {
//        print("\(firstNumber)")
//        return true
//    } else {
//        return false
//    }
//}
//
//
//var testBool: Bool = isNumber(inputNum: "3")
//testBool = isNumber(inputNum: "A")

//func isNumber2(inputNum1: String, inputNum2: String) -> Bool {
//    if let firstNumber = Int(inputNum1), let secondNumber = Int(inputNum2) {
//        return true
//    } else {
//        return false
//    }
//}
// (,)콤마를 통해 optional binding을 추가하고, 또 조건도 추가 할 수 있음.


//func isNumber(inputNum: String) -> Bool
//{
//    if let firstNumber = Int(inputNum)
//    {
//        print("\(firstNumber)")
//        return true
//    }else {
//        return false
//    }
//    
//}
//
//var testBool: Bool = isNumber(inputNum: "3")
//testBool = isNumber(inputNum: "A")

//func testFuc(optionalStr: String?)
//{
//    guard let unwrapStr: String = optionalStr else
//    {
//        print("exit")
//        return
//    }
//    print(unwrapStr)
//}
//
//testFuc(optionalStr: nil)
//testFuc(optionalStr: "test")


// Practice : 친구 리스트 만들기
//1. friendList(배열)옵셔널 변수 만들기
//2. func addFriend(name: String)만들기
//3. printFriendList()함수 만들기

//1. friendList(배열)옵셔널 변수 만들기
// 변수: var
// element: String - 일단 이름만 받는 것으로, 나중엔 각 친구를 객채로 해서 이것 저것 넣을 수 있게 만들면 좋을 듯.
// 배열명 : friendList
// optional: 배열에 아무도 없을 수 있기에.
//var friendList: Array<String>? =
//
//func hasMember(input: String?) -> Bool {
//    if let _: String = input {
//        return true
//    } else {
//        return false
//    }
//}
//
////2. func addFriend(name: String)만들기
//// append 함수 이용
//func addFriend(friendlist list: [String], name: String!) {
//    if let fList != nil {
//
//    }
//    var fList: [String] = list
//    if let friendName: String = name {
//        fList.append(friendName)
//    }
//}
//
//
////3. printFriendList()함수 만들기
//// 하나씩 출력하려면 for in 문 써서 차래로 아래로 되게 하는 것으로 일단 결정
//
//func printFriend(list: [String]) {
//    for index in 0..<list.count {
//        print(list[index])
//    }
//}
//
//addFriend(friendlist: friendList, name: "나")

var friendList: [String]?

func addFriend(name: String) {
    
}

Optional



// 친구 리스트 만들기



