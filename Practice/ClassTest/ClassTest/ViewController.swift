//
//  ViewController.swift
//  ClassTest
//
//  Created by 구민회 on 2018. 1. 22..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mazingaZ = Person(name: "마징가Z", gender: "남성", major: "초딩")
        let dic = ["국어": 80, "산수": 100, "슬기로운생활": 50, "기술": 100, "싸움": 99]
        mazingaZ.setSubjets(subjectDic: dic)
        
        let atom = Person(name: "아톰", gender: "남성", major: "고딩")
        let dicOfAtom = ["국어": 90, "수학": 85, "영어": 95, "싸움": 100, "기술": 75]
        atom.setSubjets(subjectDic: dicOfAtom)
        
        let candy = Person(name: "캔디", gender: "여성", major: "고딩")
        let dicOfCandy = ["국어": 80, "수학": 95, "영어": 100, "싸움": 50, "가정": 95]
        candy.setSubjets(subjectDic: dicOfCandy)
        
        
        let cal:Calculator = Calculator()
        cal.average(student: mazingaZ)
        cal.average(student: atom)
        cal.average(student: candy)
        
        cal.jjang(mazingaZ, atom, candy)
        
        cal.geniusHightSchool(stu1: mazingaZ, stu2: atom)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

