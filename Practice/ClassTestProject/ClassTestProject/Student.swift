//
//  Student.swift
//  ClassTestProject
//
//  Created by 구민회 on 2018. 1. 25..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Student: Person
{
    // 저장 프로퍼티, 프로퍼티 옵져버
    var price: Int = 0
    var car: String = "깡통" {
        didSet {
            
        }
        willSet {
            if newValue == "밴츠"
            {
                price += 10000
            } else {
                price += 100
            }
        }
    }
    // 연산 프로퍼티
    var color:String {
        get {
            return ""
        }
        set {
            
        }
    }
    
    
    // SchoolType 추후에 enum type으로 변경
    // elementarySchool = 0
    // middleSchool = 1
    // highSchool = 2
    // college = 3
    // university = 4
    // graduate = 5
    var schoolGrade: Int {
        willSet {
            if newValue == 3 {
                isUniversityStudent = true
            } else {
                isUniversityStudent = false
            }
        }
    }
    
    /// 학년
    var grade: Int
    
    var _major: String?
    
    var major: String? {
        get {
            return _major
        }
        set {
            if isUniversityStudent {
                if major == nil {
                    _major = newValue
                }
            }
            _major = nil
        }
    }
    
    var subjectsDIc: [String: Int] = [:]
    var subjects: [Subject] = [Subject]
    {
        get {
            var returnValue: [Subject] = []
            for (name, score) in subjectsDic {
                
            }
        }
    }
    
    private var isUniversityStudent: Bool = false
    
    init(name: String, gender: String, schoolGrade: Int, grade: Int) {
        self.schoolGrade = schoolGrade
        self.grade = grade
        if schoolGrade == 4
        {
            isUniversityStudent = true
        }
        super.init(name: name, gender: gender)
    }
    
    convenience init(name: String, gender: String, schoolGrade: Int, grade: Int, bloodType: String) {
        self.init(name: name, gender: gender, schoolGrade: schoolGrade, grade: grade)
        self.bloodType = bloodType
    }
    

//    init(name: String, gender: String, major: String) {
//        self.major = major
//        super.init(name: name, gender: gender)
//    }
    
    func addSubject(name: String, score: Int)
    {
        subjects.append(Subject(name: name, score: score))
    }
    
    func setSubjects(subjectDic:[String: Int]) {
        for (subName, subScore) in subjectDic {
            addSubject(name: subName, score: subScore)
        }
    }
    
    func power() -> Int {
        for subject in subjects {
            if subject.name == "싸움"
            {
                return subject.score
            }
        }
        return 0
    }
    
    func getIQ() -> Int {
        for subject in subjects
        {
            //return IQ ?? 100 -> Optional 일 경우 사용하는데 nil일 경우 100을 줌.(default값을 지정함)
            
            if subject.name == "수학"
            {
                return subject.score
            }
        }
        return 0
    }
}

//func mathScore() -> Int {
//    for subject in subjects {
//        if subject.name == "수학" {
//            return subject.score
//        }
//    }
//    return 0
//}

