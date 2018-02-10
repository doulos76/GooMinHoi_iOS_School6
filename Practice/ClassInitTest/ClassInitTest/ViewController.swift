//
//  ViewController.swift
//  ClassInitTest
//
//  Created by 구민회 on 2018. 2. 5..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        class Person {
//
//        }
//
//        struct Subject {
//            var name: String
//
////            init(name: String) {
////                self.name = name
////            }
//        }
//
//        class Student: Person {
//            var subjects: [Subject] = []
//            func addSubject(name: String) {
//                let subject = Subject(name: name)
//                subjects.append(subject)
//            }
//        }
//
//        var wingMan: Person = Person()
        
        struct Point {
            var x = 0.0, y = 0.0
        }
        struct Rect {
            var width = 0.0, height = 0.0
        }
        struct rect {
            var origin = Point()
            var size = Size()
            var center: Point {
                get {
                    let centerX = origin.x + (size.width / 2)
                    let centerY = origin.y + (size.height / 2)
                    return Point(x: centerX, y: centerY)
                }
                set(newCenter) {
                    origin.x = newCenter.x - (size.width / 2)
                    origin.y = newCenter.y - (size.height / 2)
                }
            }
        }
     
    
        let 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


