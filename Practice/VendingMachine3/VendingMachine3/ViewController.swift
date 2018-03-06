//
//  ViewController.swift
//  VendingMachine3
//
//  Created by 구민회 on 2018. 2. 8..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//


import UIKit    // iPhone에서 사용할 UI(View, Switch, Label등)을 사용하기 위해서 UIKit을 import함

class ViewController: UIViewController {        // UIViewController를 SuperClass로 ViewController를 상속하여 class선언함.
    
    //MARK: - Display 부 및 Button에 관한 UI 설정 선언
    var conditionDisplayLabel: UILabel?         // 입금 및 출력 등의 상태를 표시하기 위하여 UILabel type의 conditionDisplayLabel을 optional type으로 label 설정
    var cashBalanceDisplayLabel: UILabel?       // 잔액에 대한 정보를 표시하기 위한 cashBalanceDisplayLabel을 UILabel Optional type으로 label 선언
    var inputCash1000Button: UIButton?          // 1000원 입금을 위한 inputCash1000Button 이란 이름의 UIButton Optional type으로 button 선언
    var inputCash500Button: UIButton?           // 500원 입금을 위한 inputCash500Button이란 이름의 UIButton Optional type으로 button 선언
    var returnCashButton: UIButton?             // 잔액 반환 버튼으로 returnCashButton이란 이름으로 UIButton Optional type으로  button 선언
    
    //MARK: - 전시된 음료에 대한 View 선언
    var itemView: UIView?               // 음료에 대한 view 선언, 이름: itemView, type: UIView Optional type으로 nil과 값을 갖을 수 있음, 음료 item을 함께 담을 수 있는 view임
    var itemImage: UIImageView?         // 음료 imageView, 이름: itemImage, type: UIImageView Optional type. 음료의 이미지를 표시하는 UIImageView
    var itemPriceLabel: UILabel?        // 음료 가격 레이블, 이름: itemPriceLabel, type: UILabel optional type. 음료 item의 가격을 표시하는 UILabel
    var itemSelectButton: UIButton?     // 음료를 선택하기 위한 버튼, 이름: itemSelectButton, type: UIButton optional type, 음료 item을 선택하기 위한 Button
    
    //MARK: - 음료의 종류 및 가격에 대한 배열
    var drinkItemList: [String] = ["콜라", "사이다", "칸타타", "삼다수"]    // 음료의 종류에 대한 배열 선언. 이름: drinkItemList, type: String type의 Array, "콜라", "사이다", "칸타타", "삼각수" 등은 element임
    var drinkItemPriceArray: [Int] = [1000, 800, 1500, 500]          // 음료의 가격을 나타내는 배열. 이름: drinkItemPriceArray, type: Int type의 가격정보를 갖고 있는 Array

    //MARK: - 실제 가격 계산을 위한 변수 선언
    var inputCash: Int = 0              // 입력된 금액을 나태내기 위한 변수 선언, 이름: inputCash, type: Int, 0으로 초기화한 변수 선언
    var changeCash: Int = 0             // 거스름돈을 나태내기 위한 변수 선언, 이름: changeCash, type: Int, 0으로 초기화함
    var purchaseItemPrice: Int = 0      // 구입하기 위한 음료의 가격을 위한 변수 선언, 이름: purchaseItemPrice, type: Int, 0으로 초기화함
    var totalPurchasePrice: Int = 0     // 중복구매를 할 경우, 누적된 잔액에 대한 변수 선언, 이름: totalPurchasePrice, type: Int, 0으로 초기화함
    var selectedItemName: String = ""   // itemSelectButton을 눌렀을 경우 선택된  item의 이름을 표시하기 위한 변수 선언.

    //MARK: - Method 구현
    override func viewDidLoad() {       // viewDidLoad() 메서드를 override하여 재정의 함
        super.viewDidLoad()             // 부모클래스의 viewDidLoad()함수 initial
        makeItemView(count: 4)          // makeItemView 메서드 호출하고 count인자값에 4를 넣어 줌
        
        // conditionDisplayLabel에 대한 arribute값 입력 및 구현
        conditionDisplayLabel = UILabel()                               // conditionDisplayLabel을 UILabel type으로 instnace 생성
        conditionDisplayLabel?.backgroundColor = UIColor.black          // conditionDisplayLabel의 backgroundColor(배경색)을 UIColor type의  black(검정색)으로 설정함. Optional을 해제하기 위해서 ?를 설정했음
        conditionDisplayLabel?.text = "판매중"                            // conditionDisplayLabel의 text를 "판매중"으로 표시함
        conditionDisplayLabel?.textColor = UIColor.white                // conditionDisplayLabel의 textColor를 UIColor의 white로 설정함
        conditionDisplayLabel?.font = UIFont.systemFont(ofSize: 25)     // conditionDisplayLabel의 font를 systemFont를 사용하며 25의 크기를 갖도록 함
        conditionDisplayLabel?.textAlignment = NSTextAlignment.right    // conditionDisplayLabel의 정렬상태를 오른쪽 정렬로 하도록 설정
        
        // conditionDisplayLabel의 frame설정, CGRect로 x좌표는 10, y좌표는 전체뷰프래임의 높이의 2/3이 되도록 설정하고, 너비는 전체뷰의 너비에서 20을 뺀값으로 설정, 높이는 전체 높이의 1/10이 되도록 설정함
        conditionDisplayLabel?.frame = CGRect(x: 10, y: self.view.frame.size.height * 2/3, width: self.view.frame.size.width - 20, height: self.view.frame.size.height * 1/10)
        self.view.addSubview(conditionDisplayLabel!)                    // 전체뷰에 conditionDisplayLabel을 subView로 첨부시킴. !는 강제로 넣는  Optional 해제임
        
        // cashBalanceDisplayLabel에 대한 구현
        cashBalanceDisplayLabel = UILabel()                             // cashBalanceDisplayLabel을 UILabel type으로 instance  생성함
        cashBalanceDisplayLabel?.backgroundColor = UIColor.black        // cashBalanceDisplayLabel의 배경색을 검정색으로 설정함
        cashBalanceDisplayLabel?.text = "잔액: 0원"                       // cashBalanceDisplayLabel의 text를 "잔액: 0원"으로 설정함
        cashBalanceDisplayLabel?.textColor = UIColor.white              // cashBalanceDisplayLabel의 text색상을 white로 설정함
        cashBalanceDisplayLabel?.font = UIFont.systemFont(ofSize: 25)   // cashBalanceDisplayLabel를  25의 크기를 갖는 systemFont를 사용하는 것으로 설정함
        cashBalanceDisplayLabel?.textAlignment = NSTextAlignment.right  // cashBalanceDisplayLabel의 정렬방식을 오른쪽 정렬 방식으로 설정함
        // cashBalanceDisplayLabel의 frame설정, CGRect로 x좌표: 0, y좌표: 전체 뷰의 높이의 2/3에 뷰의 높이의 1/10을 더한 값, 너비: 전체 뷰의 너비에서 20을 뺀 값, 높이: 전체뷰의 높이의 1/10 으로 설정
        cashBalanceDisplayLabel?.frame = CGRect(x: 10, y: self.view.frame.size.height * 2/3 + self.view.frame.size.height * 1/10, width: self.view.frame.size.width - 20, height: self.view.frame.size.height * 1/10)
        self.view.addSubview(cashBalanceDisplayLabel!)                  // 전체 뷰에 cashBalanceDisplayLabel을 첨부시킴, Optional은 강제 해제함
        
        // inputCash1000Button 에 대한 구현
        inputCash1000Button = UIButton(type: UIButtonType.roundedRect)  // inputCash1000Button instance 생성, UIButton type으로 roundedRect type으로 생성
        inputCash1000Button?.setTitle("1000원", for: .normal)            // inputCash1000Button Button의 이름을 normal상태에서 "1000원"으로 표시되도록 설정함
        inputCash1000Button?.backgroundColor = UIColor.yellow           // inputCash1000Button의 button 배경색상을 yellow로 설정
        inputCash1000Button?.layer.borderWidth = 1.0                     // inputCash500Button의 borderWidth를 1.0으로 설정
        inputCash1000Button?.tag = 1                                    // inputCash1000Button의 tag값을 1로 설정
        inputCash1000Button?.addTarget(self, action: #selector(touchedCashButton(_:)), for: .touchUpInside)     // inputCash1000Button 버튼에 addTaget 메서드를 실행하게 함(self로 자기자신이 받고, touchedCashButton이 실행되며,touchUpInseide 즉 스위치가 눌렀다 때어질 때 표시됨)
        inputCash1000Button?.frame = CGRect(x: 10, y: self.view.frame.size.height - 70, width: 100, height: 50) // inputCash1000Button 버튼의 frame 설정, x:10, y: 전체 뷰의 크기에서 70 point를 뺀 값, 너비: 100, 높이: 50 으로 설정
        self.view.addSubview(inputCash1000Button!)  // view에 inputCash1000Button을 subView로 add함
        
        // inputCash500Button에 대한 구현
        inputCash500Button = UIButton(type: UIButtonType.roundedRect)   // inputCash500Button instance 생성, roundedRect type의 UIButton type임
        inputCash500Button?.setTitle("500원", for: .normal)              // inputCash500Button의 normal상태에서 "500원"의 title을 갖게 설정함
        inputCash500Button?.tag = 2                                     // inputCash500Button의 tag 값을 2로 설정
        inputCash500Button?.addTarget(self, action: #selector(touchedCashButton(_:)), for: .touchUpInside)  // inputCash500Button에 addTarget 메서드 설정(자기 자신이 받고, 화면 터치후 떨어질 때 touchedCashButton을 실행함
        inputCash500Button?.backgroundColor = UIColor.cyan            // inputCash500Button의 배경색을 cyan색으로 설정함
        inputCash500Button?.layer.borderWidth = 1.0                     // inputCash500Button의 borderWidth를 1.0으로 설정
        inputCash500Button?.frame = CGRect(x: 140, y: self.view.frame.size.height - 70, width: 100, height: 50) // inputCash500Button의 프레임 설정(x:140, y:전체 화면 높이에서 70을 뺀 값, 너비: 100, 높이: 50)
        self.view.addSubview(inputCash500Button!)                       // 전체 뷰에 inputCash500Button을 서브뷰로 첨가함
        
        // returnCashButton에 대한 구현
        returnCashButton = UIButton(type: UIButtonType.roundedRect)     // returnCashButton instance 생성, roundedRect type의  UIButton
        returnCashButton?.setTitle("반환", for: .normal)                 // returnCashButton이 normal상태일 때 "반환"이란 title값을 갖게 설정
        returnCashButton?.tag = 3                                       // returnCashButton의 tag값을 3으로 설정함
        returnCashButton?.addTarget(self, action: #selector(touchedCashButton(_:)), for: .touchUpInside)        // returnCashButton에 addTarget메서드 설정(자기자신이 받으며 touchUpInside가 발생했을 때, touchedCashButton이 실행됨
        //returnCashButton?.backgroundColor = UIColor.orange              // returnCashButton의 배경색상을 orange로 설정
        returnCashButton?.layer.borderWidth = 1.0                       // returnCashBUtton의 borderWidth를 1.0으로 설정
        returnCashButton?.frame = CGRect(x: 265, y: self.view.frame.size.height - 70, width: 100, height: 50)   // returnCashButton의 프레임 설정(x:265, y: 전체 뷰의 높이 - 70, 너비: 100, 높이: 50)
        self.view.addSubview(returnCashButton!)                         // 전체뷰에 returnCashButton을 addSubview함
        
    }
    
    /// touchedCashBUtton 함수 구현
    /// 버튼을 touch하면 그에 맞는 동작 구현함
    /// - Parameter sender: UIButton type
    @objc func touchedCashButton(_ sender: UIButton) {                          // @objc: Objective-C type의 메서드 구현, 이름: touchedCashButton, parameter는 UIButton type의 sender로 메서드 만듦
        switch sender.tag {                                                     // switch 문으로 sender의 tag 값을 받음
        case 1:                                                                 // sender의 tag 값이 1인 경우
            conditionDisplayLabel?.text = "1000원이 입금되었습니다."                 // conditionDisplayLabe의 text에 "1000원이 입금되었습니다."로 설정함
            inputCash += 1000                                                   // inputCash 에 1000을 더함
            totalPurchasePrice = inputCash                                      // totalPurchasePrice 에 inputCash를 넣음
            cashBalanceDisplayLabel?.text = "잔액: \(totalPurchasePrice)원"       // cashBalanceDisplayLabel의 text 값에 "잔액:" + totalPurchasePrice값 + "원"으로 표시되게 설정함
        case 2:                                                                 // sender.tag 값이 2인 경우
            conditionDisplayLabel?.text = "500원이 입금되었습니다."                  // conditionDisplayLabe의 text에 "500원이 입금되었습니다"로 설정함
            inputCash += 500                                                    // inputCash 값에 500원을 더함
            totalPurchasePrice = inputCash                                      // totalPurchasePrice에 inputCash를 넣음
            cashBalanceDisplayLabel?.text = "잔액: \(totalPurchasePrice)원"       // cashBalanceDisplayLabel의 text 값에 "잔액:" + totalPurchasePrice값 + "원"으로 표시되게 설정함
        case 3:                                                                 // sender의 tag값이 3인 경우
            conditionDisplayLabel?.text = "\(changeCash)원이 반환되었습니다."         // conditionDisplayLabel의 text값에 changeCash의 값이 반영된 "\(changeCash)원이 반환되었습니다."로 설정함
            changeCash = 0                                                      // changeCash를 0으로 설정함
            inputCash = 0                                                       // inputCash를 0으로 설정함
            cashBalanceDisplayLabel?.text = "잔액: \(changeCash)원"               // cashBalanceDisplayLabel을 "잔액: \(changeCash)원"로 표시되게 함
        default :                                                               // default 값일 경우
            return                                                              // return 하고 switch 문을 빠져 나옴
        }
    }
    
    /// 음료 아이템 선택에 대한 동작 설정 함수
    ///
    /// - Parameter sender: UIButton type
    @objc func itemSelected(_ sender: UIButton) {
        guard inputCash != 0 else {         // inputCash 가  0 이 아니면
            conditionDisplayLabel?.text = "돈을 넣으시고 선택해 주세요"     //conditionDisplayLabel의 text attribute에 "돈을 넣으시고 선택해 주세요"라고 설정함
            return                                                   // return 함, 빠져나옴
        }
        
        purchaseItemPrice = drinkItemPriceArray[sender.tag]                     // purchaseItemPrice에 drinkItemPriceArray의 sender의 tag 값을 갖는 index의 값을 넣음
        selectedItemName = drinkItemList[sender.tag]                            // selectdItemName에 drinkItemList의 sender의 tag 값을 갖는 index의 값을 넣음
        
        if totalPurchasePrice < purchaseItemPrice {                             // totalPurchasePirce가 purchaseItemPrice 보다 작다면
            conditionDisplayLabel?.text = "잔액 부족. 돈을 더 넣어 주세요."       //conditionDisplayLabel의 text attribute에 "잔액 부족. 돈을 더 넣어 주세요."라고 설정함
        } else {
            conditionDisplayLabel?.text = "\(selectedItemName)가 나왔습니다"         // conditionDisplayLabel의 text에 selectedItemName의 값이 들어간 텍스트 "\(selectedItemName)가 나왔습니다" 를 할당함
            changeCash = totalPurchasePrice - purchaseItemPrice                  // changeCash에  (totalPurchasePrice - purchaseItemPrice)의 값을 넣음
            totalPurchasePrice = changeCash                                      // totalPurchasePrice에 changeCash를 넣음
            cashBalanceDisplayLabel?.text = "잔액: \(totalPurchasePrice)원"        // cashBalanceDisplayLabel의 text에 "잔액: \(totalPurchasePrice)원"을 할당함
        }
    }
    
    //MARK: - private methode
    ///  한 종류의 음료를 구성하는 View
    ///  서브뷰>이미지뷰,레이블
    /// - Parameter count: display  되는 음료의 종류
    private func makeItemView(count: Int) {                                 // makeItemView란 이름의  private 메서드를 만듦, Int type을 갖는 count란 이름의 parameter를 가짐.
        for index in 0..<count {                                            // 0에서 입력된 count 값보다 1작은 값까지 도는  for  문 구성, index 라는 인자값을 가짐.
            let margin: CGFloat = 10                                        // subView 사용될 상수 선언, 이름: margin, type: CGFloat type, 값: 10
            let column: CGFloat = CGFloat(index % 2)                        // 2x2 형태로 하기 위해 필요 (행), 상수선언, 이름: column, type: CGFloat type, 값: index를 2로 나눈 나머지를 CGFloat으로 type 변환함
            let row: CGFloat = CGFloat(index / 2)                           // 2x2 형태로 하기 위해 필요 (열), 상수선언, 이름: row, type: CGFloat type, 값: index를 2로 나눈 몫을 CGFloat으로 type 변환함
            let frameWidth: CGFloat = self.view.frame.size.width            // 전체 프레임의 넓이 값을 나태내는 상수값 선언, 이름: frameWidth, type: CGFloat, 값: self.view.frame.size.width
            let frameHeitht: CGFloat = self.view.frame.size.height * 2/3    // subView의 높이에 사용돌 상수 선언, 이름: frameHeight, type: CGFloat, 값: self.view.frame.size.height * 2/3
            var offsetY: CGFloat = 10                                       // frame 구성에 필요한 offsetY라는 CGFloat type변수를 선언하고 값을 10으로 할당함
            let offsetX: CGFloat = 20                                       // frame 구성에 필요한 offsetX라는 CGFloat type변수를 선언하고 값을 20으로 할당함
            // itemView frame  위치 설정
            if row == 0 {               // row가 0 이면
                offsetY = 10            // offsetY는 10으로 설정
            } else {                    // 그렇지 않으면
                offsetY = 0             // offsetY는 0으로 설정
            }
            // itemView 생성및  attribute 값 설정
            itemView = UIView()                                                         // itemView라는 이름의 UIView() type의 instance  생성
            itemView?.backgroundColor = UIColor.white                                   // itemView의 배경색을 white로 설정
            itemView?.tag = index                                                       // itemView의 tag값에 index 값으로 설정
            itemView?.alpha = 0.3                                                       // itemView의 alpha(투명도)값을 0.3으로 설정 (1일경우 불투명)
            itemView?.layer.borderWidth = 1.0                                           // itemViewdml layer값의 borderWidth값을 1.0으로 설정함.
            // itemView의 frame설정 (x좌표: margin 값 + column * framWidth /2, y좌표: margin + row * frameHeitht / 2 + offsetY,width: (frameWidth / 2) - 2 * margin,height: (frameHeitht / 2) - 2 * margin 로 설정)
            itemView?.frame = CGRect(x: margin + column * frameWidth / 2,
                                     y: margin + row * frameHeitht / 2 + offsetY,
                                     width: (frameWidth / 2) - 2 * margin,
                                     height: (frameHeitht / 2) - 2 * margin)
            self.view.addSubview(itemView!) // itemView를 view에 subview로 add 함.
            
            // itemImage instanace 생성
            itemImage = UIImageView()                                   // UIImageView type의 itemImage라는 이름의 인스턴스 생성
            itemImage?.image = UIImage(named: drinkItemList[index])     // itemImage의 image에 drinkItemList의 index 값에 해당하는 element값을 받아서 UIImag로 대입함.
            
            // itemImage frame  위치 설정 ( x: margin + column * frameWidth / 2, y: margin + row * frameHeitht / 2 + offsetY, width: ((frameWidth / 2) - 2 * margin) * 9/10, height: ((frameHeitht / 2) - 2 * margin) * 9/10)로 CGRect로 설정함
            itemImage?.frame = CGRect(x: margin + column * frameWidth / 2,
                                      y: margin + row * frameHeitht / 2 + offsetY,
                                      width: ((frameWidth / 2) - 2 * margin) * 9/10,
                                      height: ((frameHeitht / 2) - 2 * margin) * 9/10)
            self.view.addSubview(itemImage!)    // itemImage를 view에 addsubview 함
            
            // itemPriceLabel 설정
            itemPriceLabel = UILabel()                                              // UILabel type의 itemPriceLabel instance 생성
            itemPriceLabel?.text = String(drinkItemPriceArray[index]) + "원"         // drinkItemPriceArray의 index 값에 해당하는 element값을 불러와 string으로 변환하고 itemPriceLabel의 text에 저장함
            itemPriceLabel?.textAlignment = NSTextAlignment.right                   // itemPriceLabel을 오른쪽 정렬로 설정함
            
            // itemPriceLabel frame  위치 설정
            // frame 을 CGRect type으로 ((x: margin + column * frameWidth / 2 - offsetX, y: margin * 9 + row * frameHeitht / 2 + offsetY, width: (frameWidth / 2) - 2 * margin, height: (frameHeitht / 2) - 2 * margin) 설정함
            itemPriceLabel?.frame = CGRect(x: margin + column * frameWidth / 2 - offsetX,
                                           y: margin * 9 + row * frameHeitht / 2 + offsetY,
                                           width: (frameWidth / 2) - 2 * margin,
                                           height: (frameHeitht / 2) - 2 * margin)
            self.view.addSubview(itemPriceLabel!)   // itemPriceLabel을 view에 subview로 첨가함
            
            //itemSelectButton instance 설정
            itemSelectButton = UIButton(type: UIButtonType.roundedRect)     // itemSelectButton instance 설정, UIButton type으로 roundedRect로 설정함
            itemSelectButton?.tag = index                                   // itemSelectButton 의 tag값을 index값으로 설정함
            itemSelectButton?.alpha = 0.1                                   // itemSelectButton의 alpha값을 0.1로 설정함
            itemSelectButton?.backgroundColor = UIColor.clear               // itemSelectButton의 배경색을 clear로 설정
            itemSelectButton?.setTitle("판매중", for: .normal)                 // itemSelectButton의 normal 상태일 때, "판매중" 이라 표시하게 title을 설정함
            itemSelectButton?.setTitle("선택됨", for: .highlighted)            // itemSelectButton의 highlighted 상태일 때, "선택됨" 이라 표시하게 title을 설정함
            itemSelectButton?.setTitle("선택됨", for: .selected)               // itemSelectButton의 selected 상태일 때, "선택됨" 이라 표시하게 title을 설정함
            // itemSelecteButton의 addTarget설정함, itemSelectButton으로 설정하고 버튼이 눌러졌다 떼어지면 itemSelected 함수가 실행됨
            itemSelectButton?.addTarget(self, action: #selector(itemSelected(_:)), for: .touchUpInside)
            // itemSelectedButton frame  위치 설정
            // CGRect타입으로 (x: margin + column * frameWidth / 2, y: margin + row * frameHeitht / 2 + offsetY, width: (frameWidth / 2) - 2 * margin, height: (frameHeitht / 2) - 2 * margin) 로 설정함
            itemSelectButton?.frame = CGRect(x: margin + column * frameWidth / 2,
                                             y: margin + row * frameHeitht / 2 + offsetY,
                                             width: (frameWidth / 2) - 2 * margin,
                                             height: (frameHeitht / 2) - 2 * margin)
            self.view.addSubview(itemSelectButton!)     // itemSelectButton을 view에 subview로 add함
        }
    }
}
