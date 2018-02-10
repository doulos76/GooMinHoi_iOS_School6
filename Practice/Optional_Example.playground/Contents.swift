//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let person1: Person = Person(name: "joo")
print(person1.name)
//let person2: Person
//print(person2.name)
//type(of: person2.name)

//Unwrapping
//Optional변수에 값이 있음을 확인하여 일반 변수로 전환해 준다
//Forced Unwrapping
func testFuc(optionalStr: String?)
{
    if optionalStr != nil
    {
        let unwrapStr: String = optionalStr!
        print(unwrapStr)
    }
}
let someString: String = "some string"
testFuc(optionalStr: someString)


//Optional Binding
func testFunc(optionalStr: String?)
{
    if let unwrapStr: String = optionalStr
    {
        print(unwrapStr)
    }
}
testFunc(optionalStr: someString)

func isNumber(inputNum: String) -> Bool {
    if let firstNumber = Int(inputNum) {
        print("\(firstNumber)")
        return true
    } else {
        return false
    }
}

isNumber(inputNum: "1")
isNumber(inputNum: "a")

//Early Exit
func testFuc2(optionalStr: String?)
{
    guard let unwrapStr: String = optionalStr else {
        return
    }
    print(unwrapStr)
}

testFuc2(optionalStr: someString)
testFuc2(optionalStr: String(isNumber(inputNum: "a")))

