//
//  Persion.swift
//  FunctionTest
//
//  Created by 구민회 on 2018. 1. 11..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation


class Persion {
    
    // Personal Information Properties
    var name: String = ""           // Person Name
    var company: String = ""        // Company Name
    var employeeNumber: Int = 0     // Company Employee Number
    
    // Time Variable for Working Hours Properties
    var workingHours: Int = 0       // Working Hours
    var goToWorkTime: Int = 0       // Go to Work Time
    var offWorkTime: Int = 0        // Out of Office Time
    var lunchHour: Int = 0          // Lunch Time
    
    // Tasks to do Properties
    var researchJob: String = ""            // Task, you can write your research item
    var meetThePeopleJob: String = ""       // Task, you met people whever Client, Buyer, Coworker
    var engineeringJob: String = ""         // Task, you can write Project job
    var gainProfit: Int = 0                 // Profit, you can gain point, than you sucess the job.
    
    // Benefits Properties
    var salaryInMonth: Double = 0.0         // salary in month.
    
    
    // Method
    // Personnal information print
    func profile(name: String, company: String, employeeNumber: Int) /*-> String */{
        self.name = name
        self.company = company
        self.employeeNumber = employeeNumber
        let personalInformation: String = self.name + "\n" + self.company + "\n" + String(self.employeeNumber)
        print(personalInformation)
        //return personalInformation
    }
    
    // time to go to work Hours
    
    
    ///  회사 출근 시간을 알려 주는 함수
    ///
    /// - Parameter time: 회사 도착 시간
    func goToWork(time: Int){
        goToWorkTime = time
        print("\(goToWorkTime)시에 출근하였습니다.")
    }

    // out of office time print
    func outOfOffice(time: Int){
        offWorkTime = time
        print("\(offWorkTime)시에 퇴근하였습니다.")
    }
    
    
    // research job method
    func doneWorkResearch(about researchJob: String) -> Int {
        self.researchJob = researchJob
        print("\(self.researchJob)에 대한 조사를 끝마치셨습니다. 상점 1점이 지급됩니다.")
        self.gainProfit += 1
        return self.gainProfit
    }
    
    // engineering job method
    func doneWorkEngineeringJob(about engineeringJob: String) -> Int {
        self.engineeringJob = engineeringJob
        print("\(self.engineeringJob)을 끝마치셨습니다. 상점 1점이 지급됩니다.")
        self.gainProfit += 1
        return self.gainProfit
    }
    
    func getGainProfit(gainProfit: Int) -> Int {
        self.gainProfit = gainProfit + 1
        return self.gainProfit
    }
}
