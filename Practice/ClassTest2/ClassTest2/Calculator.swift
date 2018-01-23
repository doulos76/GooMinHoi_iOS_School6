//
//  Calculator.swift
//  ClassTest2
//
//  Created by 구민회 on 2018. 1. 23..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Calculator {
    
    
    
    func averageOfSubject(student: Person)
    {
        let allSubject: [Subject] = student.subjects
        var totalScore: Int = 0
        for n in allSubject {
            totalScore += n.scoreOfSubject
        }
        let average: Double = Double(totalScore) / Double(allSubject.count)
        print("\(student.personalName)는 학교는 \(student.schoolType)이고, 모든 과목의 평균은 \(average)입니다.")
    }

    
    
    //가장 싸움을 잘하는 아이는?
    func jjang(_ student:Person...)
    {
        var jjangName:String = ""
        var maxPower:Int = 0
        
        for person in student
        {
            let challengerPower = person.power()
            //과목들 중에서 싸움을 찾아서 싸움의 파워를 가져오기
            
            //새로운 짱 등극
            if maxPower < challengerPower
            {
                maxPower = challengerPower
                jjangName = person.personalName
            }
        }
        
        print("이구역 짱은 \(jjangName)입니다.")
    }
    
    
    //고딩 둘중 수학점수가 높은 아이는?
    func geniusHighSchool(stu1:Person, stu2:Person)
    {
        let stu1IQ = stu1.getIQ()
        let stu2IQ = stu2.getIQ()
        
        var geniusPerson:Person?
        var diffScore:Int = 0
        if stu1IQ > stu2IQ
        {
            geniusPerson = stu1
            diffScore = stu1IQ - stu2IQ
        }else
        {
            geniusPerson = stu2
            diffScore = stu2IQ - stu1IQ
        }
        
        print("\(geniusPerson!.personalName)의 수학점수가 \(diffScore)점 더 높기 때문에 더 똑똑합니다." )
    }
    
    

}
