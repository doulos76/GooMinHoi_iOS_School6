//
//  ViewController.swift
//  MakeViewHierarchy
//
//  Created by 구민회 on 2018. 2. 3..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mySubViewArray: [UIView]!
    }
    
    func makeSubViewArray(for number: [Int]) -> [UIView] {
        var subViewArray: [UIView] = []
        for index in 0 ..< number.count {
            let mySubView: UIView = UIView()
            mySubView.tag = index
            mySubView.backgroundColor = getColor(inputNum: index)
            subViewArray.append(mySubView)
        }
        return subViewArray
    }
    
    func getColor(inputNum: Int) -> UIColor {
        let chooseColor = inputNum % 3
        switch chooseColor {
        case 0:
            return UIColor.blue
        case 1:
            return UIColor.orange
        case 2:
            return UIColor.green
        default:
            return UIColor.white
        }
    }
    
    let margin: CGFloat = 15
    
    func setupFrame(list: [UIView]) {
        for index in 0..<list.count {
            if index == 0 {
                list[index].frame = CGRect(x: <#T##CGFloat#>, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
            } else {
                
            }
        }
    }
    
    func addSubView(list: [UIView]) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

