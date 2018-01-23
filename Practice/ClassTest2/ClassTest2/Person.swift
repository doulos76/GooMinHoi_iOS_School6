//
//  Person.swift
//  ClassTest2
//
//  Created by 구민회 on 2018. 1. 23..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Person {
    var personalName: String
    //var age: Int
    var gender: String
    var schoolType: String
    var blood: String = ""
    
    var subjects: [Subject] = []
    
    init() {
        self.personalName = "이름 없음"
        self.gender = "성별 필요"
        self.schoolType = "메이져값"
    }
    
    init(subjects:[Subject]) {
        self.personalName = ""
        self.gender = ""
        self.schoolType = ""
    }
    
    convenience init(name: String, subjects:[String: Int])
    {
        self.init()
        self.setSubjects(subjectDic: subjects)
    }
    
    convenience init(blood: String)
    {
        self.init()
        self.blood = blood
    }
    

    func addSubject(name: String, score: Int) {
        subjects.append(Subject(subjectName: name, scoreOfSubject: score))
    }
    
    func setSubjects(subjectDic: [String: Int]) {
        for (subjectName, subjectScore) in subjectDic
        {
            addSubject(name: subjectName, score: subjectScore)
        }
    }
    
    
    func power() -> Int
    {
        for subject in subjects
        {
            if subject.subjectName == "전투력"
            {
                return subject.scoreOfSubject
            }
        }
        return 0
    }
    
    func getIQ() -> Int
    {
        for subject in subjects
        {
            if subject.subjectName == "수학"
            {
                return subject.scoreOfSubject
            }
        }
        return 0
    }
    
}


