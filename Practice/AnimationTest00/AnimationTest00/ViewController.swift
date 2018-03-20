//
//  ViewController.swift
//  AnimationTest00
//
//  Created by 구민회 on 20/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet private weak var animView: UIView!
  @IBOutlet weak var animViewBottomConstraint: NSLayoutConstraint!
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.view.setNeedsLayout()  // Bool 값을 true,false로 설정
//    self.view.layoutIfNeeded()  //setNedsLayout이 true일 경우 자동으로 즉시 됨
    //self.animView.alpha = 1.0
    
//    UIView.animate(withDuration: 3) { [weak self] in
//          //self?.animView.alpha = 0.0
//      self.animViewBottomConstraint.constant += 200
//      self.view.layoutIfNeeded()
//
//    }) { finish in
//      if finish {
//
//      } else {
//
//      }
    }
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

