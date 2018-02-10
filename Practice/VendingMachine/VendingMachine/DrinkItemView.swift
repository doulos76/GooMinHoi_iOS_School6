//
//  DrinkItemView.swift
//  VendingMachine
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class DrinkItemView: UIView {

    var drinkImageView: UIImageView?
    var drinkPriceLabel: UILabel?
    var itemSelectButton: UIButton?
    
//    var drinkItemPriceList: [String]?
    var index: Int = 0
    var drinkItemList: [String] = ["콜라", "사이다", "칸타타", "삼다수"]
    var drinkItemPriceArray: [Int] = [1000, 800, 1500, 500]

 
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        self.backgroundColor = UIColor.lightGray
        self.alpha = 0.5
        createView()
        //updateLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createView() {
        drinkImageView = UIImageView()
        drinkImageView?.layer.borderWidth = 1
        drinkImageView?.image = UIImage(named: drinkItemList[0] )
        drinkImageView?.frame = CGRect(x: self.frame.size.width / 3, y: self.frame.size.height / 5, width: self.frame.size.width / 3, height: self.frame.size.height * 3/5)
        self.addSubview(drinkImageView!)
        
        drinkPriceLabel = UILabel()
        drinkPriceLabel?.text = "\(String(drinkItemPriceArray[0]))원"
        drinkPriceLabel?.font = UIFont.systemFont(ofSize: 15)
        drinkPriceLabel?.textAlignment = NSTextAlignment.right
        self.addSubview(drinkPriceLabel!)
        
        itemSelectButton = UIButton(type: UIButtonType.custom)
        itemSelectButton?.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        itemSelectButton?.setTitle("선택됨", for: UIControlState.highlighted)
        self.addSubview(itemSelectButton!)
      
    }
    
//    private func updateLayout() {
//
//    }
    

}
