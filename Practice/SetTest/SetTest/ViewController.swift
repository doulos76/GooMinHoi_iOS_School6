//
//  ViewController.swift
//  SetTest
//
//  Created by 구민회 on 2018. 2. 4..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       //var someInts: Set<Int> = [1, 2, 3, 4]
        
        func arrayTest()
        {
            var list: [String] = ["my", "name", "is", "a", "joo", "youngmin"]
            list.append("입니다.")
            print("list배열의 총 갯수는", list.count)
            print(list[3])
            list.remove(at: 3)
            list.insert("my introduce it my self.", at: 0)
            
            for text in list
            {
                print(text)
            }
        }
        
        arrayTest()
        
        var person: [String: Any] = ["name": "joo", "age": 20, "isSingle": true]
        let name1 = person["name"]
        let name2 = person["name"] as! String
        print(type(of: name1))
        print(name1)
        print(name1!)
        print(type(of: name2))
        
        func dicTest()
        {
            var dic:[String: Any] = ["name": "joo", "age":  20, "job": "Developer", "isSingle": true]
            
            dic.updateValue("Seoul", forKey: "address")
            dic.updateValue("winman", forKey: "name")
            dic.removeValue(forKey: "isSingle")
            
            let introduce: String = "제 이름은" + (dic["name"] as! String) + "입니다."
            let doubleAge = (dic["age"] as! Int) * 2
            
            print(introduce)
            print(doubleAge)
        }
        
        dicTest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

