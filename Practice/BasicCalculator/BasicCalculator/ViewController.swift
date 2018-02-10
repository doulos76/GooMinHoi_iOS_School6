//
//  ViewController.swift
//  BasicCalculator
//
//  Created by 구민회 on 2018. 1. 12..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 피연산자 및 연산 결과를 나타내는 디스플레이 레이블뷰 프로퍼티 선언
    @IBOutlet var firstNumDisplay: UILabel!
    @IBOutlet var secondNumDisplay: UILabel!
    @IBOutlet var resultDisplay: UILabel!

    var operationTemp: String?  // operator 임시 저장 변수
    
    // 실제 계산을 위한 첫번째 숫자
    var firstNum: String? {
        willSet(nextValue) {
            if let newValue = nextValue
            {
                firstNumDisplay.text = newValue
            }
        }
    }
    
    // 실제 계산을 위한 두번째 숫자
    var secondNum: String? {
        willSet(nextValue) {
            if let newValue = nextValue
            {
                secondNumDisplay.text = newValue
            }
        }
    }
    
    var resultNum: String = "0"  // 실제 계산 결과갑
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Action Method
    @IBAction func clickedDidNumber(_ sender: UIButton) {
        
        //버튼에 있는 택스트 가져오기
        let numberStr: String = sender.titleLabel!.text!
        //연산자 유무확인
        if let _ = operationTemp
        {
            inputNum(numberStr, tempProperty: &secondNum)
        } else {
            resetDisplay()
            inputNum(numberStr, tempProperty: &firstNum)
        }
        
        if operationTemp?.count > 0 {
            let secondDisplay = secondNumDisplay.text!
            if secondNum == "0" {
                secondNumDisplay.text = numberStr
                secondNum = numberStr
            } else {
                secondNumDisplay.text = secondNumDisplay.text! + numberStr
                secondNum = secondNum! + numberStr
            }
            secondNumDisplay.text = secondNum
        } else {
            let firstDisplay = firstNumDisplay.text!
            if firstNum == "0" {
                firstNumDisplay.text = numberStr
                // 최초 계산기 시작을 위한 위치
                resetDisplay()
                firstNum = numberStr
            } else {
                firstNumDisplay.text = firstNumDisplay.text! + numberStr
                firstNum = firstNum! + numberStr
            }
            firstNumDisplay.text = firstNum
        }
    }
    
    private func inputNum(_ numStr: String, tempProperty: inout String?)
    {
        if let num = tempProperty
        {
            tempProperty = num + numStr
        }
        else
        {
            tempProperty = numStr
        }
    }
    
    /// 연산자 입력 Method
    /// Touch시 touch된 연산자 입력됨
    /// - Parameter sender: "+,-,×,÷" Button touch
    @IBAction func clickDidOperation(_ sender: UIButton) {
        let operStr = sender.titleLabel!.text!
        
        let firstDisplay = firstNumDisplay.text!
        if firstNum != "0" {
            operationTemp = operStr
            changeColor(by: operStr)
        }
    }
    
    /// Cancel Button Method
    /// 취소 버튼 Method
    /// - Parameter sender: "c" Button touch
    @IBAction func clickDidCancel(_ sender: UIButton) {
        print("did Cancel")
        resetDisplay()
        resetData()
    }
    

    /// 결과표시 Method
    /// 클릭후 결과값 표시 Method
    /// - Parameter sender: "=" Button touch
    @IBAction func clickDidResult(_ sender: UIButton) {
        let secondNumStr = secondNumDisplay.text!
        if secondNum != "0" {
            let firstNumTemp: Int = Int(firstNum!)!
            let secondNumTemp: Int = Int(secondNum!)!
            let op: String = operationTemp!
            
            let resultNum = calculation(firstNum: firstNumTemp, operation: op, secondNum: secondNumTemp)
            resultDisplay.text = String(resultNum)
            resetData()
        }
    }

    //MARK: - Private Method
    
    /// 연산함수
    /// 두수를 연산자에 따라 연산하고 결과값을 리턴해준다.
    /// - Parameters:
    ///   - firstNum: 첫번째 디스플레이에 표시된 숫자
    ///   - operation: 연산을 위한 연산자
    ///   - secondNum: 두번째 디스플레이에 표시된 숫자
    /// - Returns: 연산의 결과값
    private func calculation(firstNum: Int, operation:String, secondNum: Int) -> Int
    {
        var resultNum: Int = 0
        
        switch operation {
        case "+":
            print("더하기 연산")
            resultNum = firstNum + secondNum
        case "-":
            print("빼기 연산")
            resultNum = firstNum - secondNum
        case "×":
            print("곱하기 연산")
            resultNum = firstNum * secondNum
        case "÷":
            print("나하기 연산")
            resultNum = firstNum / secondNum
        default:
            print("여기 걸리면 에러임!")
        }
        
        return resultNum
    }
    
    //데이터 리셋
    private func resetData() {
        firstNum = "0"
        secondNum = "0"
        resultNum = "0"
        operationTemp = ""
    }
    
    //UI리셋
    private func resetDisplay() {
        firstNumDisplay.text = "0"
        secondNumDisplay.text = "0"
        resultDisplay.text = "0"
        
        changeLabelBG(color: .white)
    }
    
    private func changeColor(by operation: String) {
        var color: UIColor
        switch operation {
        case "+":
            color = .orange
        case "-":
            color = .yellow
        case "×":
            color = .green
        case "÷":
            color = .cyan
        default:
            color = .white
            print("여기 걸리면 에러임!")
        }
        changeLabelBG(color: color)
        
    }
    
    private func changeLabelBG(color: UIColor) {
        firstNumDisplay.backgroundColor = color
        secondNumDisplay.backgroundColor = color
        resultDisplay.backgroundColor = color
    }
}

