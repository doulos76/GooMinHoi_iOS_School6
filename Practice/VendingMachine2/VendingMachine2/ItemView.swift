//
//  ItemView.swift
//  VendingMachine2
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit


/// 자판기 판매 음료에 대한 화면 구성
class ItemView: UIView {
    
    /// 음료에 대한 view
    var itemView: UIView?
    /// 음료 imageView
    var itemImage: UIImageView?
    /// 음료 가격 레이블
    var itemPriceLabel: UILabel?
    /// 음료를 선택하기 위한 버튼
    var itemSelectButton: UIButton?
    
    
//    var index: Int = 0
    var drinkItemList: [String] = ["콜라", "사이다", "칸타타", "삼다수"]
    var drinkItemPriceArray: [Int] = [1000, 800, 1500, 500]
    var purchaseItemPrice: Int = 0
    var totalPurchasePrice: Int = 0
    var vendingMachinsMoney: Int  = 100000
    var selectedItemName: String = ""

    
    //MARK: - initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeItemView(count: 4)
//        updateArray(count: 4)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    //MARK: - private methode
    
    ///  한 종류의 음료를 구성하는 View
    ///  서브뷰>이미지뷰,레이블
    /// - Parameter count: display  되는 음료의 종류
    func makeItemView(count: Int) {

        for index in 0..<count {
            
            //  subView margin
            let margin: CGFloat = 10
            // 2x2 형태로 하기 위해 필요 (행)
            let column: CGFloat = CGFloat(index % 2)
            // 2x2 형태로 하기 위해 필요 (열)
            let row: CGFloat = CGFloat(index / 2)
            let frameWidth: CGFloat = self.frame.size.width
            let frameHeitht: CGFloat = self.frame.size.height
            var offsetY: CGFloat = 10
            let offsetX: CGFloat = 20
            // itemView frame  위치 설정
            if row == 0 {
                offsetY = 10
            } else {
                offsetY = 0
            }

            
            itemView = UIView()
            itemView?.backgroundColor = UIColor.lightGray
            itemView?.tag = index
            itemView?.alpha = 0.3
            
            itemView?.frame = CGRect(x: margin + column * frameWidth / 2,
                                     y: margin + row * frameHeitht / 2 + offsetY,
                                     width: (frameWidth / 2) - 2 * margin,
                                     height: (frameHeitht / 2) - 2 * margin)

            self.addSubview(itemView!)
            
            itemImage = UIImageView()
            itemImage?.image = UIImage(named: drinkItemList[index])
            
            // itemImage frame  위치 설정
            itemImage?.frame = CGRect(x: margin + column * frameWidth / 2,
                                      y: margin + row * frameHeitht / 2 + offsetY,
                                      width: ((frameWidth / 2) - 2 * margin) * 9/10,
                                      height: ((frameHeitht / 2) - 2 * margin) * 9/10)

            self.addSubview(itemImage!)
            
            
            itemPriceLabel = UILabel()
            itemPriceLabel?.text = String(drinkItemPriceArray[index]) + "원"
            itemPriceLabel?.textAlignment = NSTextAlignment.right
            
            // itemPriceLabel frame  위치 설정
            itemPriceLabel?.frame = CGRect(x: margin + column * frameWidth / 2 - offsetX,
                                           y: margin * 9 + row * frameHeitht / 2 + offsetY,
                                           width: (frameWidth / 2) - 2 * margin,
                                           height: (frameHeitht / 2) - 2 * margin)

            self.addSubview(itemPriceLabel!)
            
            itemSelectButton = UIButton(type: UIButtonType.roundedRect)
            itemSelectButton?.tag = index
            itemSelectButton?.alpha = 0.1
            itemSelectButton?.backgroundColor = UIColor.orange
            itemSelectButton?.setTitle("판매중", for: .normal)
            itemSelectButton?.setTitle("선택됨", for: .highlighted)
            itemSelectButton?.setTitle("선택됨", for: .selected)
            itemSelectButton?.addTarget(self, action: #selector(itemSelected(_:)), for: .touchUpInside)
            // itemSelectedButton frame  위치 설정
            itemSelectButton?.frame = CGRect(x: margin + column * frameWidth / 2,
                                             y: margin + row * frameHeitht / 2 + offsetY,
                                             width: (frameWidth / 2) - 2 * margin,
                                             height: (frameHeitht / 2) - 2 * margin)
            self.addSubview(itemSelectButton!)
        }
    }
//    @objc func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
//        sender.addTarget(target:, action:, controlEvents:)
//    }
    
    @objc func itemSelected(_ sender: UIButton) {
        purchaseItemPrice = drinkItemPriceArray[sender.tag]
        selectedItemName = drinkItemList[sender.tag]
        
//        switch sender.tag {
//        case 0:
//            purchaseItemPrice = 1000
//            selectedItemName = "콜라"
//            if itemSelectButton?.tag == sender.tag {
//                itemSelectButton?.backgroundColor = UIColor.blue
//                itemSelectButton?.alpha = 0.3
//            }
//        case 1:
//            purchaseItemPrice = 800
//            selectedItemName = "사이다"
//            if itemSelectButton?.tag == sender.tag {
//                itemSelectButton?.backgroundColor = UIColor.blue
//                itemSelectButton?.alpha = 0.3
//            }
//
//        case 2:
//            purchaseItemPrice = 1500
//            selectedItemName = "칸타타"
//            if itemSelectButton?.tag == sender.tag {
//                itemSelectButton?.backgroundColor = UIColor.blue
//                itemSelectButton?.alpha = 0.3
//            }
//
//        case 3:
//            purchaseItemPrice = 500
//            selectedItemName = "삼다수"
//            if itemSelectButton?.tag == sender.tag {
//                itemSelectButton?.backgroundColor = UIColor.blue
//                itemSelectButton?.alpha = 0.3
//            }
//
//        default:
//             break
//        }
        
//        itemSelectButton?.backgroundColor = UIColor.blue
//        itemSelectButton?.alpha = 0.2
        
    }
        
}
    
    
    /// frame 구성
//    func updateArray(count: Int) {
////        let count: Int = 4
//        for index in 0..<count
//        {
//            //  subView margin
//            let margin: CGFloat = 10
//            // 2x2 형태로 하기 위해 필요 (행)
//            let column: CGFloat = CGFloat(index % 2)
//            // 2x2 형태로 하기 위해 필요 (열)
//            let row: CGFloat = CGFloat(index / 2)
//            let frameWidth: CGFloat = self.frame.size.width
//            let frameHeitht: CGFloat = self.frame.size.height
//            var offsetY: CGFloat = 10
//            let offsetX: CGFloat = 20
//            // itemView frame  위치 설정
//            if row == 0 {
//                offsetY = 10
//            } else {
//                offsetY = 0
//            }
//
//            itemView?.frame = CGRect(x: margin + column * frameWidth / 2,
//                                     y: margin + row * frameHeitht / 2 + offsetY,
//                                     width: (frameWidth / 2) - 2 * margin,
//                                     height: (frameHeitht / 2) - 2 * margin)
//
//
//            // itemImage frame  위치 설정
//            itemImage?.frame = CGRect(x: margin + column * frameWidth / 2,
//                                      y: margin + row * frameHeitht / 2 + offsetY,
//                                      width: ((frameWidth / 2) - 2 * margin) * 9/10,
//                                      height: ((frameHeitht / 2) - 2 * margin) * 9/10)
//
//            // itemPriceLabel frame  위치 설정
//            itemPriceLabel?.frame = CGRect(x: margin + column * frameWidth / 2 - offsetX,
//                                           y: margin * 9 + row * frameHeitht / 2 + offsetY,
//                                           width: (frameWidth / 2) - 2 * margin,
//                                           height: (frameHeitht / 2) - 2 * margin)
//
//            // itemSelectedButton frame  위치 설정
//            itemSelectButton?.frame = CGRect(x: margin + column * frameWidth / 2,
//                                             y: margin + row * frameHeitht / 2 + offsetY,
//                                             width: (frameWidth / 2) - 2 * margin,
//                                             height: (frameHeitht / 2) - 2 * margin)
//
//
//
//        }
//    }



