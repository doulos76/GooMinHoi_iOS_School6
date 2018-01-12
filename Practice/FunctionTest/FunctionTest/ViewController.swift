//
//  ViewController.swift
//  FunctionTest
//
//  Created by 구민회 on 2018. 1. 11..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 시작시점!
        let brad: Persion = Persion()
        var pointBrad: Int = 0
        brad.company = "Apple Inc."
        brad.name = "Brad Fit"
        brad.employeeNumber = 12345678
       // brad.profile(name: brad.name, company: brad.company, employeeNumber: brad.employeeNumber)
        
        
        brad.goToWork(time: 8)
        brad.engineeringJob = "New Project - Log on API Design"
        pointBrad = brad.doneWorkResearch(about: "AI")
        pointBrad = brad.doneWorkResearch(about: "\(brad.engineeringJob)")
        brad.outOfOffice(time: 19)
        brad.gainProfit = brad.getGainProfit(gainProfit: pointBrad)
        print(brad.gainProfit)
        
        print("=========================")
        let james: Persion = Persion()
        var pointJames: Int = 0
        james.name = "James Dean"
        james.company = "Google"
        james.employeeNumber = 132456
        james.goToWork(time: 10)
        //james.profile(name: james.name, company: james.company, employeeNumber: james.employeeNumber)
        pointJames = james.doneWorkEngineeringJob(about: "Deep Learning")
        pointJames = james.doneWorkEngineeringJob(about: "Design Web browing algorithm")
        pointJames = james.doneWorkEngineeringJob(about: "Debug Error")

        james.outOfOffice(time: 17)
        james.gainProfit = james.getGainProfit(gainProfit: pointJames)
        print(james.gainProfit)
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

