//
//  ViewController.swift
//  ScoreCalculator
//
//  Created by 구민회 on 2018. 2. 4..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var testScore: Int = 0
        var gradePointAverage: String = "F"
        if testScore >= 95 && testScore < 100 {
            gradePointAverage = "A+"
        } else if testScore >= 90 && testScore < 95 {
            gradePointAverage = "A0"
        } else if testScore >= 85 && testScore < 90 {
            gradePointAverage = "B+"
        } else if testScore >= 80 && testScore < 85 {
            gradePointAverage = "B0"
        } else {
            gradePointAverage = "F"
        }
        
        
        func returnGPA(score: Int) -> String {
            switch score {
            case 95...100: gradePointAverage = "A+"
            case 90..<95: gradePointAverage = "A0"
            case 85..<90: gradePointAverage = "B+"
            case 80..<85: gradePointAverage = "B0"
            case 75..<70: gradePointAverage = "C+"
            case 70..<75: gradePointAverage = "C0"
            case 65..<70: gradePointAverage = "D+"
            case 60..<65: gradePointAverage = "D0"
            default: gradePointAverage = "F"
            }
            return gradePointAverage
        }
        
        func returnPoint(gpa: String) -> Double {
            var point: Double = 0
            switch gpa {
            case "A+": point = 4.5
            case "A0": point = 4.0
            case "B+": point = 3.5
            case "B0": point = 3.0
            case "C+": point = 2.5
            case "C0": point = 2.0
            case "D+": point = 1.5
            case "D0": point = 1.0
            case "F" : point = 0
            default: point = 0
            }
            return point
        }
        
        func interSwitch(count: Int)
        {
            let countedThings = "moons orbiting Saturn"
            let naturalCount: String
            switch count {
            case 0:
                naturalCount = "no"
            case 1..<5:
                naturalCount = "a few"
            case 5..<12:
                naturalCount = "several"
            case 12..<100:
                naturalCount = "dozens of"
            case 100..<1000:
                naturalCount = "hundreds of"
            default:
                naturalCount = "many"
            }
            print("There are \(naturalCount) \(countedThings)")
        }
        
        interSwitch(count: -2)
        
        func getPoint(somePoint: (Int, Int))
        {
            switch somePoint {
            case (0, 0):
                print("\(somePoint) is at the origin")
            case (_, 0):
                print("\(somePoint) is on the x-axis")
            case (0, _):
                print("\(somePoint) is on the y-axis")
            case (-2...2, -2...2):
                print("\(somePoint) is inside the box")
            default:
                print("\(somePoint) is outside of the box")
            }
        }
        
        getPoint(somePoint: (0, 0))
        getPoint(somePoint: (5, 0))
        getPoint(somePoint: (0, -3))
        getPoint(somePoint: (1, 1))
        getPoint(somePoint: (3, 6))
        print("-------------------------")
        func getPoint_valueBinding(somePoint: (Int, Int))
        {
            switch somePoint {
            case (0, 0):
                print("\(somePoint) is at the origin")
            case (let x, 0):
                print("on the x-axis with an x vlaue of \(x)")
            case (0, let y):
                print("on the y-axis with an x vlaue of \(y)")
            case (-2...2, -2...2):
                print("\(somePoint) is inside the box")
            default:
                print("\(somePoint) is outside of the box")
            }
        }
        
        getPoint_valueBinding(somePoint: (0, 0))
        getPoint_valueBinding(somePoint: (5, 0))
        getPoint_valueBinding(somePoint: (0, -3))
        getPoint_valueBinding(somePoint: (1, 1))
        getPoint_valueBinding(somePoint: (3, 6))

        print("-------------------------")
        
        func wherePoint(point: (Int, Int))
        {
            switch point {
                case let (x, y) where  x == y:
                    print("(\(x), \(y)) is on the line x == y")
                case let (x, y) where x == -y:
                    print("(\(x), \(y)) is on the line y == -y")
                case let (x, y):
                    print("(\(x), \(y)) is just some arbitrary point")
                
            }
        }
        
        wherePoint(point: (3, 3))
        wherePoint(point: (2, -2))
        wherePoint(point: (6, -2))

        
        var index = 0
        
        while index < 10 {
            print("현재 횟수는 \(index)입니다.")
            index += 1
        }
        
        func timesTable(_ times: Int) {
            print("\(times)단")
            var count: Int = 1
            while count < 10
            {
                print("\(times) * \(count) = \(times * count)")
                count += 1
            }
        }
        timesTable(3)
        
        let numbers: [Int] = [1, 2, 3, 4, 5]
        for number in numbers {
            print("\(number)")
        }
        
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        let base = 3
        let power  = 10
        var answer = 1
        
        for _ in 1...power {
            answer *= base
            print(answer)
        }
        
        func timesTable_range(_ times: Int) {
            print("\(times)단")
            for count in 1...9 {
                print("\(times) * \(count) = \(times * count)")
            }
        }
        timesTable_range(7)
        
        func factorial(input num: Int) {
            var result: Int = 1
            var factorialProcessList: [Int] = []
            for index in 0..<num {
                
                result *= (num - index)
                factorialProcessList.append((num - index))

            }
            
            print("==================")
            print("\(factorialProcessList)")
            print("\(num)'s factorial is \(result)")
        }
        
        factorial(input: 3)
        factorial(input: 5)
        
        func triangular(num: Int) {
            var sum: Int = 0
            if num <= 0 {
                sum = 0
                print(sum)
                return
            }
            for index in 1...num {
                sum += index
            }
            print(sum)
        }
        triangular(num: 10)
        triangular(num: -1)
        
        /// 각 자리수 더하는 메소드
        ///
        /// - Parameter num: 입력 정수
        func addAll(num: Int) {
            var sum: Int = 0    // 합
            var quotient: Int   // 몫
            var remain: Int     // 나머지
            var tempNum: Int = num  // 입력값을 받을 임시 보관 변수
            repeat{
                quotient = tempNum / 10
                remain = tempNum % 10
                sum += remain
                tempNum = quotient
            } while (quotient != 0)
            print(sum)
        }
        addAll(num: 5792)
        
        // 숫자 리버스 함수
    
        func revers(num: Int) {
            var reverseNum: String = ""
            var quotient: Int   // 몫
            var remain: Int     // 나머지
            var tempNum: Int = num  // 입력값을 받을 임시 보관 변수
            repeat{
                quotient = tempNum / 10
                remain = tempNum % 10
                reverseNum += String(remain)
                tempNum = quotient
            } while (quotient != 0)
            print(reverseNum)
        }
        
        revers(num: 3456789)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




















