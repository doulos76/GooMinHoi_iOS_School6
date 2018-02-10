//
//  ViewController.swift
//  CalculatorForWing
//
//  Created by 구민회 on 2018. 1. 30..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayView: UILabel!
    var keyPadView: UIView!
    var etcView: UIView!
    var opeView: UIView!
    var numberPadView: UIView!
    
    var etcBtnList:[UIView]!
    var operBtnList:[UIView]!
    var numberBtnList:[UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
        updateLayout()
        
    }
    
    
    /// UI Instance 만드는 메서드
    private func createUI()
    {
        
        displayView = UILabel()
        displayView.text = "0"
//        displayView.font
        displayView.textColor = UIColor.white
        displayView.textAlignment = NSTextAlignment.right
        view.addSubview(displayView)
        
        keyPadView = UIView()
        view.addSubview(keyPadView)
        
        etcView = UIView()
        keyPadView.addSubview(etcView)
        opeView = UIView()
        keyPadView.addSubview(opeView)
        numberPadView = UIView()
        keyPadView.addSubview(numberPadView)
        
        //test를 위한 색상 지정
        displayView.backgroundColor = .darkGray
        keyPadView.backgroundColor = UIColor.black
        etcView.backgroundColor = UIColor.red
        opeView.backgroundColor = UIColor.blue
        numberPadView.backgroundColor = UIColor.yellow
        
        etcBtnList = makeBtnList(count: 3)
        for btn in etcBtnList
        {
            btn.layer.borderWidth = 1
            btn.layer.borderColor = UIColor.darkGray.cgColor
            etcView.addSubview(btn)
        }
        
        operBtnList = makeBtnList(count: 5)
        for btn in operBtnList
        {
            btn.layer.borderWidth = 1
            btn.layer.borderColor = UIColor.darkGray.cgColor
            opeView.addSubview(btn)
        }
        
        numberBtnList = makeBtnList(count: 10)
        for btn in numberBtnList
        {
            btn.layer.borderWidth = 1
            btn.layer.borderColor = UIColor.darkGray.cgColor
            numberPadView.addSubview(btn)
        }
    }
    
    
    private func makeBtnList(count: Int) -> [UIView] {
        var returnList: [UIView] = []
        for index in 0..<count {
            let btn = UIView()
            btn.tag = index
            returnList.append(btn)
        }
        return returnList
    }

    func arrange(viewList: [UIView], collumCount: Int, width: CGFloat) {
        for index in 0..<viewList.count
        {
            let col: CGFloat = CGFloat(index % collumCount)
            let row: CGFloat = CGFloat(index / collumCount)
            viewList[index].frame = CGRect(x: col*width, y: row*width, width: width, height: width)
        }
    }
    
    
    /// UI Instance frame 설정 메서드
    private func updateLayout()
    {
        //버튼은 화면에 가로에 4개식 배치
        let btnWidth: CGFloat = self.view.frame.size.width / 4
        //아래에서부터 배치
        var offSetY: CGFloat = self.view.frame.size.height - (btnWidth*5)
        //keyPad 영역 프레임
        keyPadView.frame = CGRect(x: 0, y: offSetY, width: view.frame.size.width, height: btnWidth*5)
        // Display영역 프레임
        let displayViewHeight: CGFloat = 150
        offSetY -= displayViewHeight
        displayView.frame = CGRect(x: 0, y: offSetY, width: view.frame.size.width, height: displayViewHeight)
        //======================================
        //< keyPad안 영역>
        
        //etcView영역 프레임
        etcView.frame = CGRect(x: 0, y: 0, width: btnWidth*3, height: btnWidth)
        arrange(viewList: etcBtnList, collumCount: 3, width: btnWidth)
        //연산자 영역 프레임
        opeView.frame = CGRect(x: btnWidth*3, y: 0, width: btnWidth, height: btnWidth*5)
        arrange(viewList: operBtnList, collumCount: 1, width: btnWidth)
        //숫자영역 프레임
        numberPadView.frame = CGRect(x: 0, y: btnWidth, width: btnWidth*3, height: btnWidth*4)
        arrange(viewList: numberBtnList, collumCount: 3, width: btnWidth)
    }
}

















