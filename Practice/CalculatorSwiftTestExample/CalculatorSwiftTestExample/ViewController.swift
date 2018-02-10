//
//  ViewController.swift
//  CalculatorSwiftTestExample
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumDisplay: UILabel!
    @IBOutlet weak var secondNumDisplay: UILabel!
    @IBOutlet weak var resultDisplay: UILabel!
    
    var operationTemp: String?
    
    var firstNum: String?
    {
        willSet(nextValue) {
            if let newValue = nextValue {
                firstNumDisplay.text = newValue
            }
        }
    }
    
    var secondNum: String?
    {
        willSet(nextValue) {
            if let newValue = nextValue {
                secondNumDisplay.text = newValue
            }
        }
    }
    
    //MARK:- Action Method
    @IBAction func clickDidNumber(_ sender: UIButton) {
        /// 버튼에 있는 텍스트 가져오기
        let numberStr: String = sender.titleLabel!.text!
        /// 연산자 유무확인
        if let _ = operationTemp {
            inputNum(numberStr, tempProperty: &secondNum)
        } else {
            resetDispay()
            inputNum(numberStr, tempProperty: &firstNum)
        }
    }
    
    private func inputNum(_ numStr: String, tempProperty: inout String?) {
        if let num = tempProperty {
            tempProperty = num + numStr
        } else {
            tempProperty = numStr
        }
    }
    
    @IBAction func clickDidOperation(_ sender: UIButton) {
        let operStr = sender.titleLabel!.text!
        
        if firstNum != nil {
            operationTemp = operStr
            changeColor(by: operStr)
        }
    }
    
    @IBAction func clickDidCancel(_ sender: UIButton) {
        print("did Cancel")
        resetDispay()
        resetData()
    }
    
    @IBAction func clickDidResult(_ sender: UIButton) {
        if let firNum = firstNum, let op = operationTemp, let secNum = secondNum {
            let firstNumTemp: Int = Int(firNum)!
            let secondNumTemp: Int = Int(secNum)!
//            let op: String = operationTemp
            
            let resultNum = calculation(firstNum: firstNumTemp, operation: op, secondNum: secondNumTemp)
            resultDisplay.text = String(resultNum)
            resetData()
            
        }
    }
    
    private func calculation(firstNum: Int, operation: String, secondNum: Int) -> Int {
        var resultNum: Int = 0
        
        switch operation {
        case "+":
            print("더하기 연산")
            resultNum = firstNum + secondNum
        case "−":
            print("빼기 연산")
            resultNum = firstNum - secondNum
        case "×":
            print("곱하기 연산")
            resultNum = firstNum * secondNum
        case "÷":
            print("나누기 연산")
            resultNum = firstNum / secondNum
        default:
            print("여기 걸리면 에러임!")
        }
        return resultNum
    }
    
    private func resetData() {
        firstNum = nil
        secondNum = nil
        
        operationTemp = nil
    }
    
    private func resetDispay() {
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
        case "−":
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
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

