//
//  Person.swift
//  ClassTestProject
//
//  Created by 구민회 on 2018. 1. 25..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var gender: String
    var age: Int?
    var bloodType: String?
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
    
    convenience init(name: String, gender: String, age: Int) {
        self.init(name: name, gender: gender)
        self.age = age
    }

    convenience init(name: String, gender: String, age: Int, bloodType: String) {
        self.init(name: name, gender: gender, age: age)
        self.bloodType = bloodType
    }
}
