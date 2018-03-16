//
//  NewViewController.swift
//  Serialization
//
//  Created by 구민회 on 15/03/2018.
//  Copyright © 2018 Giftbot. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
  
  
  private var dirPath: String {
    return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)[0]
  }
  private let customClass1 = CustomClass1(name: "giftbot", job: "iOS Developer")
  private let customClass2 = CustomClass2(name: "giftbot", job: "iOS Developer")
  private let customClass3 = CustomClass3(name: "giftbot", job: "iOS Developer")
  private let customClass4 = CustomClass4(name: "giftbot", job: "iOS Developer")

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
