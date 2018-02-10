//
//  ViewController.swift
//  UITest
//
//  Created by 구민회 on 2018. 1. 29..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let margin: CGFloat = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let subViewList: [UIView] = makeSubArrayList(inputNum: 12)
        //updateFrameSetting(viewList: subViewList)
        updateFrameForCollection(for: subViewList, colum: 10)
        addSubView(subViewList: subViewList)
    }
    
    func makeSubArrayList(inputNum: Int) -> [UIView] {
        var subViewArray: [UIView] = []
        for index in 0..<inputNum {
            let subView: UIView = UIView()
            subView.tag = index
            subView.backgroundColor = getColor(number: index)
            subViewArray.append(subView)
        }
        return subViewArray
    }
    
    func getColor(number: Int) -> UIColor {
        let viewColorNumber = number % 3
        switch viewColorNumber {
        case 0:
            return UIColor.red
        case 1:
            return UIColor.green
        case 2:
            return UIColor.blue
        default:
            return UIColor.white
        }
    }
    
    func updateFrameForCollection(for list: [UIView], colum: Int) {
        for index in 0..<list.count {
            let col = index % colum
            let row = index / colum
            
            let width: CGFloat = (self.view.bounds.size.width - 20) / CGFloat(colum)
            
            list[index].frame = CGRect(x: 10 + (CGFloat(col) * width), y:150 + (CGFloat(row) * width) , width: width , height: width)
        }
    }
    
    func updateFrameSetting(viewList: [UIView]) {
        for index in 0..<viewList.count {
            if index == 0 {
                viewList[index].frame = CGRect(x: margin, y: margin, width: view.frame.size.width - margin*2, height: view.frame.size.height - margin*2)
            } else {
                let superViewFrame = viewList[index - 1].frame
                viewList[index].frame = CGRect(x: margin, y: margin, width: superViewFrame.size.width - margin*2, height: superViewFrame.size.height - margin*2)
            }
        }
    }
    
    func addSubView(subViewList: [UIView]) {
                self.view.addSubview(subViewList[0])
//        for index in 0..<subViewList.count {
//            if index == 0 {
//                self.view.addSubview(subViewList[index])
//            } else {
//                subViewList[index - 1].addSubview(subViewList[index])
//            }
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
