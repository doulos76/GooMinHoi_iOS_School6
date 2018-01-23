//
//  Student.swift
//  ClassTest2
//
//  Created by 구민회 on 2018. 1. 23..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Student: Person
{
    var grade: String = ""
    
    init(grade: String)
    {
        super.init()
        self.grade = grade
    }
    
    
//    init(grade: String) {
//        self.grade = grade
//        super.init(personalName: personalName, gender: "", schoolType: "")
//    }
    
    func printName() {
        print(personalName)
    }
    
}
