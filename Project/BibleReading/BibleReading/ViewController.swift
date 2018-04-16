//
//  ViewController.swift
//  BibleReading
//
//  Created by dave on 12/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK:- Properties
  var todaysBible: UITextView!

  // MARK: View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    layout()
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // Method
  
  
  
  // private Method
  private func layout() {
    let offsetX = self.view.frame.size.width
    let offsetY = self.view.frame.size.height
    self.todaysBible.frame = CGRect(x: offsetX * 0.1 , y: offsetY * 0.1, width: offsetX * 0.8 , height: offsetY * 0.8)
  }
  
  private func setupView() {
    self.todaysBible = UITextView()
    let text: String = """
    시편 23편

    여호와는 나의 목자시니
    내가 부족함이 없으리로다
    그가 나를 푸른 초장에 누이시며
    쉴만한 물가로 나를 인도하시는도다
    내 영혼을 소생시키시며 자기 이름을 위하여
    의의 길로 인도하시는도다
    내가 사망의 음침한 골짜기로 지날지라도
    해를 두려워 하지 않을 것은
    주께서 나와 함께 하심이라
    주의 지팡이와 막대기가 나를 안위하시나이다
    주께서 내 원수의 목전에서 상을 베푸시고
    기름으로 내 머리에 바르셨으니
    내 잔이 넘치나이다
    내 평생에 선하심과 인자하심이 정녕 나를 따르리니
    내가 여호와의 집에 영원하 거하리로다
"""
    self.todaysBible.text = text
    self.todaysBible.textAlignment = NSTextAlignment.center
    self.todaysBible.isEditable = false
    self.view.addSubview(todaysBible)
    
  }
  

}

