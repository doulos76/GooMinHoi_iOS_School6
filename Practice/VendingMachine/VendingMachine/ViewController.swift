//
//  ViewController.swift
//  VendingMachine
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item: DrinkItemView = DrinkItemView()
        item.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.view.addSubview(item)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//    var index: Int = 0
//    var drinkItemArray: [String] = ["콜라", "사이다", "칸타타", "삼다수"]
//
//    var drinkItemSubView: UIView?
//    var buyingProcessDisplayView: UIView?
//    var userInputView: UIView?
//
//    var drinkItemView: UIView?
//
//    var drinkItemImageView: UIImageView?
//    var drinkItemPriceLabel: UILabel?

//// Drink Item 이 있는 뷰 설정
//let margin: CGFloat = 20
//let frameWidth: CGFloat = self.view.frame.size.width
//let frameHeight: CGFloat = self.view.frame.size.height
//drinkItemSubView = UIView()
//drinkItemSubView?.backgroundColor = UIColor.blue
//drinkItemSubView?.frame = CGRect(x: margin, y: margin, width: frameWidth - margin * 2, height: frameHeight * 3 / 5)
//self.view.addSubview(drinkItemSubView!)
//
//makeItemLayout(count: 4)
//
//
//
//
//
//
//// Display Label이 있는 뷰 설정
//buyingProcessDisplayView = UIView()
//buyingProcessDisplayView?.backgroundColor = UIColor.darkGray
//buyingProcessDisplayView?.frame = CGRect(x: margin, y: frameHeight * 3 / 5 + margin * 2, width: frameWidth - margin * 2, height: frameHeight * 1 / 5)
//self.view.addSubview(buyingProcessDisplayView!)
//
//let offsetY = frameHeight * 4 / 5 + margin * 3
//// User Input button 이 있는 뷰 설정
//userInputView = UIView()
//userInputView?.backgroundColor = UIColor.gray
//userInputView?.frame = CGRect(x: margin, y: offsetY, width: frameWidth - margin * 2, height: frameHeight / 10)
//self.view.addSubview(userInputView!)
//

//func makeItemLayout(count: Int) {
//
////        for index in 0..<count
////        {
////            let margin: CGFloat = 5
////            let column: CGFloat = CGFloat(index % 2)
////            let row: CGFloat = CGFloat(index / 2)
////
////            drinkItemView = UIView()
////            drinkItemView?.backgroundColor = UIColor.green
////            drinkItemView?.tag = index
////
////
////
////            drinkItemView?.frame = CGRect(x: margin + column * drinkItemSubView!.frame.size.width/2,
////                                          y: margin + row * drinkItemSubView!.frame.size.height/2,
////                                          width: 150,
////                                          height: 150)
////            drinkItemSubView?.addSubview(drinkItemView!)
////
////            drinkItemImageView = UIImageView()
////            drinkItemImageView?.image = UIImage(named: String(drinkItemArray[index]))
////
////            drinkItemImageView?.frame = CGRect(x: margin * 2 + column * drinkItemView!.frame.size.width/3,
////                                               y: margin + row * drinkItemView!.frame.size.height/4,
////                                               width: 100,
////                                               height: 100)
////
////            drinkItemView?.addSubview(drinkItemImageView!)
////
////
////        }



//    var drinkItemView0: UIView?
//    var drinkItemView1: UIView?
//    var drinkItemView2: UIView?
//    var drinkItemView3: UIView?

//        drinkItemView0 = UIView()
//        drinkItemView0?.backgroundColor = UIColor.green
//        drinkItemView0?.tag = 0
//        drinkItemView0?.frame = CGRect(x: 0, y: 0, width: drinkItemSubView!.bounds.size.width / 2, height: drinkItemSubView!.bounds.size.height / 2)
//        drinkItemSubView?.addSubview(drinkItemView0!)
//
//        drinkItemView1 = UIView()
//        drinkItemView1?.backgroundColor = UIColor.red
//        drinkItemView1?.tag = 1
//        drinkItemView1?.frame = CGRect(x: 0, y: 0, width: drinkItemSubView!.bounds.size.width / 2, height: drinkItemSubView!.bounds.size.height / 2)
//        drinkItemSubView?.addSubview(drinkItemView1!)
//
//        drinkItemView2 = UIView()
//        drinkItemView2?.backgroundColor = UIColor.gray
//        drinkItemView2?.tag = 2
//        drinkItemView2?.frame = CGRect(x: 0, y: 0, width: drinkItemSubView!.bounds.size.width / 2, height: drinkItemSubView!.bounds.size.height / 2)
//        drinkItemSubView?.addSubview(drinkItemView2!)
//
//        drinkItemView3 = UIView()
//        drinkItemView3?.backgroundColor = UIColor.darkGray
//        drinkItemView3?.tag = 3
//        drinkItemView3?.frame = CGRect(x: 0, y: 0, width: drinkItemSubView!.bounds.size.width / 2, height: drinkItemSubView!.bounds.size.height / 2)
//        drinkItemSubView?.addSubview(drinkItemView3!)
