//
//  ViewController.swift
//  ClassTest2
//
//  Created by 구민회 on 2018. 1. 23..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person1: Person = Person.init(personalName: "마징가Z", gender: "남", schoolType: "고딩")
        let person2: Person = Person(personalName: "아톰", gender: "남", schoolType: "초딩")
        let person3: Person = Person(personalName: "삐삐", gender: "여", schoolType: "중딩")
        let person4: Person = Person(personalName: "태권V", gender: "남", schoolType: "고딩")
        
        person1.setSubjects(subjectDic: ["영어":84, "수학":80, "국어":70, "과학":100, "전투력": 95])
        person2.setSubjects(subjectDic: ["국어":74, "산수":50, "체육":80, "자연":85, "전투력": 90])
        person3.setSubjects(subjectDic: ["국어":70, "수학":70, "미술":90, "과학":30, "전투력": 55])
        person4.setSubjects(subjectDic: ["영어":94, "수학":95, "국어":80, "과학":920, "전투력": 100])
        
        
        let cal:Calculator = Calculator()
        cal.averageOfSubject(student: person1)
        cal.averageOfSubject(student: person2)
        
        cal.jjang(person1, person2, person3, person4)
        
        cal.geniusHighSchool(stu1: person1, stu2: person4)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

