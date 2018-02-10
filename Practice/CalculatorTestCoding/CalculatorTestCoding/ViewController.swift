//
//  ViewController.swift
//  CalculatorTestCoding
//
//  Created by 구민회 on 2018. 1. 30..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // View Property Decleartion
    var displayView: UILabel!    // 입,출력 숫자 표시 화면을 나타내는 View
    var keyPadView: UIView!     // 입력 Button을 처리할 전체 View
    // keyPadView안에 들어갈 subViews
    var etcView: UIButton!
    var opeView: UIButton!
    var numberPadView: UIButton!
    
    // Button Array Property 선언
    var etcBtnList: [UIButton]!
    var operBtnList: [UIButton]!
    var numberBtnList: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        updateLayout()
    }
    
    /// UI Instance를 만드는 메서드
    func createUI() {
        // sub View를 만들고, 상위 View에 첨부시킴.
        displayView = UILabel()
        displayView.text = "0"
        displayView.textColor = .white
        displayView.textAlignment = NSTextAlignment.right
        displayView.font = UIFont.systemFont(ofSize: 100)
        view.addSubview(displayView)
        
        keyPadView = UIView()
        view.addSubview(keyPadView)
        
        etcView = UIButton()
        keyPadView.addSubview(etcView)
        
        opeView = UIButton()
        keyPadView.addSubview(opeView)
        
        numberPadView = UIButton()
        keyPadView.addSubview(numberPadView)
        
        // Test를 위한 색상 지정.
        displayView.backgroundColor = UIColor.black
        keyPadView.backgroundColor = UIColor.black
        etcView.backgroundColor = UIColor.black//lightGray
        opeView.backgroundColor = UIColor.black//orange
        numberPadView.backgroundColor = UIColor.black//gray
        
        etcBtnList = makeBtnList(count: 3)
        let etcTitleList = ["AC","±","%"]
        for index in 0..<etcBtnList.count {
            let title = etcTitleList[index]
            let btn = etcBtnList[index]
            btn.layer.borderWidth = 1
            btn.layer.cornerRadius = 50
            btn.layer.borderColor = UIColor.darkGray.cgColor
            btn.setTitle(title, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
            btn.addTarget(self, action: #selector(etcBtnPressed(_:)), for: .touchUpInside)
            etcView.addSubview(btn)
        }
        
        operBtnList = makeBtnList(count: 5)
        let operTitleList = ["÷", "×", "−", "+", "="]
        for index in 0..<operBtnList.count {
            let title = operTitleList[index]
            let btn = operBtnList[index]
            btn.layer.borderWidth = 1
            btn.layer.cornerRadius = 50
            btn.layer.borderColor = UIColor.darkGray.cgColor
            btn.setTitle(title, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
            btn.addTarget(self, action: #selector(operBtnPressed(_:)), for: .touchUpInside)
            opeView.addSubview(btn)
        }
        numberBtnList = makeBtnList(count: 10)
        let numberTitleList = ["7", "8", "9", "4", "5", "6", "1", "2", "3", "0"]
        for index in 0..<numberBtnList.count {
            let title = numberTitleList[index]
            let btn = numberBtnList[index]
            btn.layer.borderWidth = 1
            btn.layer.cornerRadius = 50
            btn.layer.borderColor = UIColor.darkGray.cgColor
            btn.setTitle(title, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 30)
            btn.addTarget(self, action: #selector(numberBtnPressed(_:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(numberBtnDown(_:)), for: .touchDown)
            numberPadView.addSubview(btn)
            
        }
    }
    
    @objc func etcBtnPressed(_ sender: UIButton) {
        print("etc button pressed")
        print(sender.tag)
        //print(sender.titleLabel?.text)
        
    }
    
    @objc func operBtnPressed (_ sender: UIButton) {
        print("operation button pressed")
        print(sender.tag)
        //print(sender.titleLabel?.text)
    }
    
    @objc func numberBtnPressed (_ sender: UIButton) {
        sender.backgroundColor = UIColor.gray

        print("number button pressed")
        print(sender.tag)
        //print(sender.titleLabel?.text)
    }
    @objc func numberBtnDown (_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
    }
    
    
    /// UI Instance Frame설정 메서드
    func updateLayout() {
        // 버튼은 화면에 가로에 4개씩 배치
        let btnWidth: CGFloat = self.view.frame.size.width / 4
        // 아래에서부터 배치
        var offSetY: CGFloat = self.view.frame.size.height - (btnWidth*5)
        // keyPad 영역 프레임
        keyPadView.frame = CGRect(x: 0, y: offSetY, width: view.frame.size.width, height: btnWidth*5)
        //Display영역 프레임
        let displayViewHeight: CGFloat = 150
        offSetY -= displayViewHeight
        displayView.frame = CGRect(x: 0, y: offSetY, width: view.frame.size.width, height: displayViewHeight)
        //================================
        //<keyPad안 영역>
        //etcView영역 프레임
        etcView.frame = CGRect(x: 0, y: 0, width: btnWidth*3, height: btnWidth)
        arrange(viewList: etcBtnList, columnCount: 3, width: btnWidth)
        
        opeView.frame = CGRect(x: btnWidth*3, y: 0, width: btnWidth, height: btnWidth*5)
        arrange(viewList: operBtnList, columnCount: 1, width: btnWidth)
        
        numberPadView.frame = CGRect(x: 0, y: btnWidth, width: btnWidth*3, height: btnWidth*4)
        arrange(viewList: numberBtnList, columnCount: 3, width: btnWidth)
    }
    
    private func makeBtnList(count: Int) -> [UIButton] {
        var returnList: [UIButton] = []
        for index in 0..<count {
            let btn = UIButton()
            btn.tag = index
            returnList.append(btn)
        }
        return returnList
    }
    
    func arrange(viewList: [UIView], columnCount: Int, width: CGFloat) {
        for index in 0..<viewList.count {
            let col: CGFloat = CGFloat(index % columnCount)
            let row: CGFloat = CGFloat(index / columnCount)
            viewList[index].frame = CGRect(x: col*width, y: row*width, width: width, height: width)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


