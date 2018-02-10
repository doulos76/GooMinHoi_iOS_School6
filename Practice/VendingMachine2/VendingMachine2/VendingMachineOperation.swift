//
//  VendingMachineOperation.swift
//  VendingMachine2
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

/// 자판기 판매에 관한 Model 구성
class VendingMachineOperation {
    
    var index: Int = 0

    /// 판매음료리스트
    var drinkItemList: [String] = ["콜라", "사이다", "칸타타", "삼다수"]
    /// 판매음료 가격 리스트
    var drinkItemPriceArray: [Int] = [1000, 800, 1500, 500]
    /// 전체 구매 가격
    var totalPurchasePrice: Int = 0
    /// 자판기에 남아 있는 전체 가격
    var vendingMachinsMoney: Int  = 100000
    
    
    
    
    /// 음료를 선택하는 함수
    func selecItem() {
        
    }
    
    /// 가격을 계산하는 함수
//    func calculatePrice {
//
//    }

    /// 남아 있는 음료의 종류 및 갯수 파악
//    func remainItemsCheck {
//
//    }
}


/// 음료 아이템
class DrinkItem {
    
    /// 음료 이름
    var name: String?
    /// 음료의 보유 수량
    var quantity: Int?
    /// 음료의 가격
    var price: Int?
}
