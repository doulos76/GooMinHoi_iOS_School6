//
//  ViewController.swift
//  VendingMachine3
//
//  Created by 구민회 on 2018. 2. 8..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var conditionDisplayLabel: UILabel?
    var cashBalanceDisplayLabel: UILabel?
    var inputCash1000Button: UIButton?
    var inputCash500Button: UIButton?
    var returnCashButton: UIButton?
    /// 음료에 대한 view
    var itemView: UIView?
    /// 음료 imageView
    var itemImage: UIImageView?
    /// 음료 가격 레이블
    var itemPriceLabel: UILabel?
    /// 음료를 선택하기 위한 버튼x
    var itemSelectButton: UIButton?
    
    var drinkItemList: [String] = ["콜라", "사이다", "칸타타", "삼다수"]
    var drinkItemPriceArray: [Int] = [1000, 800, 1500, 500]

    var inputCash: Int = 0 //
    var changeCash: Int = 0 //
    var purchaseItemPrice: Int = 0  //
    var totalPurchasePrice: Int = 0 //
    var selectedItemName: String = "" //
    
    func calculateInputCash(input: Int) -> Int {
        totalPurchasePrice += inputCash
        return totalPurchasePrice
    }
    
    func returnChangeMoney() -> Int {
        
        return changeCash
    }
    
    func calculateChangeMoney(totalPurchasePrice: Int, inputCash: Int) -> Int {
        changeCash = inputCash - totalPurchasePrice
        return changeCash
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        makeItemView(count: 4)
        
        conditionDisplayLabel = UILabel()
        conditionDisplayLabel?.backgroundColor = UIColor.black
        conditionDisplayLabel?.text = "판매중"
        conditionDisplayLabel?.textColor = UIColor.white
        conditionDisplayLabel?.font = UIFont.systemFont(ofSize: 25)
        conditionDisplayLabel?.textAlignment = NSTextAlignment.right
        conditionDisplayLabel?.frame = CGRect(x: 10, y: self.view.frame.size.height * 2/3, width: self.view.frame.size.width - 20, height: self.view.frame.size.height * 1/10)
        self.view.addSubview(conditionDisplayLabel!)
        
        cashBalanceDisplayLabel = UILabel()
        cashBalanceDisplayLabel?.backgroundColor = UIColor.black
        cashBalanceDisplayLabel?.text = "잔액: 0원"
        cashBalanceDisplayLabel?.textColor = UIColor.white
        cashBalanceDisplayLabel?.font = UIFont.systemFont(ofSize: 25)
        cashBalanceDisplayLabel?.textAlignment = NSTextAlignment.right
        cashBalanceDisplayLabel?.frame = CGRect(x: 10, y: self.view.frame.size.height * 2/3 + self.view.frame.size.height * 1/10, width: self.view.frame.size.width - 20, height: self.view.frame.size.height * 1/10)
        self.view.addSubview(cashBalanceDisplayLabel!)
        
        inputCash1000Button = UIButton(type: UIButtonType.roundedRect)
        inputCash1000Button?.setTitle("1000원", for: .normal)
        inputCash1000Button?.backgroundColor = UIColor.orange
        inputCash1000Button?.tag = 1
        inputCash1000Button?.addTarget(self, action: #selector(touchedCashButton(_:)), for: .touchUpInside)
        inputCash1000Button?.frame = CGRect(x: 10, y: self.view.frame.size.height - 70, width: 100, height: 50)
        self.view.addSubview(inputCash1000Button!)
        
        inputCash500Button = UIButton(type: UIButtonType.roundedRect)
        inputCash500Button?.setTitle("500원", for: .normal)
        inputCash500Button?.tag = 2
        inputCash500Button?.addTarget(self, action: #selector(touchedCashButton(_:)), for: .touchUpInside)
        inputCash500Button?.backgroundColor = UIColor.orange
        inputCash500Button?.frame = CGRect(x: 140, y: self.view.frame.size.height - 70, width: 100, height: 50)
        self.view.addSubview(inputCash500Button!)
        
        returnCashButton = UIButton(type: UIButtonType.roundedRect)
        returnCashButton?.setTitle("반환", for: .normal)
        returnCashButton?.tag = 3
        returnCashButton?.addTarget(self, action: #selector(touchedCashButton(_:)), for: .touchUpInside)
        returnCashButton?.backgroundColor = UIColor.orange
        returnCashButton?.frame = CGRect(x: 265, y: self.view.frame.size.height - 70, width: 100, height: 50)
        self.view.addSubview(returnCashButton!)
        
    }
    
    @objc func touchedCashButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            conditionDisplayLabel?.text = "1000원이 입금되었습니다."
            inputCash += 1000
            totalPurchasePrice = inputCash
            cashBalanceDisplayLabel?.text = "잔액: \(totalPurchasePrice)원"
        case 2:
            conditionDisplayLabel?.text = "500원이 입금되었습니다."
            inputCash += 500
            totalPurchasePrice = inputCash
            cashBalanceDisplayLabel?.text = "잔액: \(totalPurchasePrice)원"
        case 3:
            conditionDisplayLabel?.text = "\(changeCash)원이 반환되었습니다."
            changeCash = 0
            inputCash = 0
            cashBalanceDisplayLabel?.text = "잔액: \(changeCash)원"
        default :
            return
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //-------------------
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
            let frameWidth: CGFloat = self.view.frame.size.width
            let frameHeitht: CGFloat = self.view.frame.size.height * 2/3
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
            
            self.view.addSubview(itemView!)
            
            itemImage = UIImageView()
            itemImage?.image = UIImage(named: drinkItemList[index])
            
            // itemImage frame  위치 설정
            itemImage?.frame = CGRect(x: margin + column * frameWidth / 2,
                                      y: margin + row * frameHeitht / 2 + offsetY,
                                      width: ((frameWidth / 2) - 2 * margin) * 9/10,
                                      height: ((frameHeitht / 2) - 2 * margin) * 9/10)
            
            self.view.addSubview(itemImage!)
            
            
            itemPriceLabel = UILabel()
            itemPriceLabel?.text = String(drinkItemPriceArray[index]) + "원"
            itemPriceLabel?.textAlignment = NSTextAlignment.right
            
            // itemPriceLabel frame  위치 설정
            itemPriceLabel?.frame = CGRect(x: margin + column * frameWidth / 2 - offsetX,
                                           y: margin * 9 + row * frameHeitht / 2 + offsetY,
                                           width: (frameWidth / 2) - 2 * margin,
                                           height: (frameHeitht / 2) - 2 * margin)
            
            self.view.addSubview(itemPriceLabel!)
            
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
            self.view.addSubview(itemSelectButton!)
        }
    }
    
    @objc func itemSelected(_ sender: UIButton) {
    
        guard inputCash != 0 else {
            conditionDisplayLabel?.text = "돈을 넣으시고 선택해 주세요"
            return
        }
        
        if inputCash < changeCash {
            conditionDisplayLabel?.text = "잔액이 모자랍니다. 돈을 더 넣어 주세요."
        } else {
            purchaseItemPrice = drinkItemPriceArray[sender.tag]
            selectedItemName = drinkItemList[sender.tag]
            
            conditionDisplayLabel?.text = "\(selectedItemName)가 나왔습니다"
            changeCash = totalPurchasePrice - purchaseItemPrice
            cashBalanceDisplayLabel?.text = "잔액: \(changeCash)원"
        }
    }
}

