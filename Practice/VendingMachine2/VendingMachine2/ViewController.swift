//
//  ViewController.swift
//  VendingMachine2
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    var conditionDisplayLabel: UILabel?
    var cashBalanceDisplayLabel: UILabel?
    var inputCash1000Button: UIButton?
    var inputCash500Button: UIButton?
    var returnCashButton: UIButton?
    
    var inputCash: Int = 0
    var changeCash: Int = 0
    var totalPurchaseCash: Int = 0
    var totalCashOfVM: Int = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var vm: VendingMachineOperation?
        
        
        
        
        let items = ItemView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height * 2/3))
        self.view.addSubview(items)

        
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
            changeCash = inputCash
            cashBalanceDisplayLabel?.text = "잔액: \(changeCash)원"
        case 2:
            conditionDisplayLabel?.text = "500원이 입금되었습니다."
            inputCash += 500
            changeCash = inputCash
            cashBalanceDisplayLabel?.text = "잔액: \(changeCash)원"
        default:
//            changeCash = inputCash - vm!.totalPurchasePrice
            conditionDisplayLabel?.text = "\(changeCash)원이 반환되었습니다."
            changeCash = 0
            cashBalanceDisplayLabel?.text = "잔액: \(changeCash)원"
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//        purchaseItemPrice = drinkItemPriceArray[sender.tag]
//        selectedItemName = drinkItemList[sender.tag]
