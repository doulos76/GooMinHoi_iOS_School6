//
//  Person.swift
//  ClassTestExample
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var gender: String
    var major: String
    
    var subjects: [Subject] = []
    
    init(name: String, gender: String, major: String) {
        self.name = name
        self.gender = gender
        self.major = major
    }
    
    func addSubject(name: String, score: Int) {
        subjects.append(Subject(name: name, score: score))
    }
    
    func setSubjects(subjectDic: [String: Int]) {
        for (subName, subScore) in subjectDic {
            addSubject(name: subName, score: subScore)
        }
    }
    
    func power() -> Int {
        for subject in subjects {
            if subject.name == "싸움" {
                return subject.score
            }
        }
        return 0
    }
    
    func getIQ() -> Int {
        for subject in subjects {
            if subject.name == "수학" {
                return subject.score
            }
        }
        return 0
    }
}
