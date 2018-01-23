//
//  Person.swift
//  ClassTest
//
//  Created by 구민회 on 2018. 1. 22..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Person
{
    var name: String
    var gender: String
    var major: String

    var subjects: [Subject] = []
    
    init(name:String, gender: String, major:String) {
        self.name = name
        self.gender = gender
        self.major = major
    
    }
    
    
    func addSubject(name: String, score: Int)
    {
        subjects.append(Subject(name: name, score: score))
    }
    
    func setSubjets(subjectDic:[String: Int])
    {
        for (subName, subScore) in subjectDic
        {
            addSubject(name: subName, score: subScore)
        }
    }
    
    func power() -> Int{
        for subject in subjects {
            if subject.name == "싸움" {
                return subject.score
            }
        }
    }
    
    func getIQ() -> Int {
        for subject in subjects {
            if subject.name == "수학" {
                return subject.score
            }
        }
    }
    
}
