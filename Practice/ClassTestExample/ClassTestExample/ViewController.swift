//
//  ViewController.swift
//  ClassTestExample
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit
  
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mazingaZ = Person(name: "마징가Z", gender: "남", major: "초딩")
        mazingaZ.setSubjects(subjectDic: ["국어": 80, "산수": 100, "슬기로운생활": 50, "기술": 100, "싸움": 99])
        
        let lazenca = Person(name: "라젠카", gender: "여", major: "고딩")
        lazenca.setSubjects(subjectDic: ["언어": 50, "수학": 80, "도덕": 90, "과학": 100, "싸움": 87])
        
        let atom = Person(name: "아톰", gender: "남", major: "고딩")
        atom.setSubjects(subjectDic: ["언어": 100, "수학": 100, "도덕": 90, "과학": 70, "싸움": 50])
        
        let cal: Calculator = Calculator()
        cal.average(student: mazingaZ)
        cal.average(student: lazenca)
        
        cal.jjang(mazingaZ, lazenca, atom)
        
        cal.geniusHighSchool(stu1: lazenca, stu2: atom)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

