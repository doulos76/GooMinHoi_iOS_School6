//
//  main.swift
//  OptionalBindingPractice
//
//  Created by 구민회 on 2018. 1. 31..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

//class Foo {
//    var someValue: String!
//}
//
//let some = Foo()
//some.someValue = "test"
//print(some.someValue)
//
func isNumber(inputNum:String) -> Bool
{
    if let firstNumber = Int(inputNum)
    {
        print("\(firstNumber)")
        return true
    }else {
        return false
    }
    
}

var test: Bool = isNumber(inputNum: "123")
print(test)
test = isNumber(inputNum: "abc")
print(test)
