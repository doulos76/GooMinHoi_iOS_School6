//
//  ViewController.swift
//  MenuChangeTest
//
//  Created by 구민회 on 20/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var foodflyMenuView: UIView!
  
  private var menuColor: UIColor = .blue
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func menuChange(_ sender: UIButton) {
    if menuColor == .blue {
      menuColor = .red
      
    } else if menuColor == .red {
      menuColor = .blue
    }
    foodflyMenuView.backgroundColor = menuColor
    self.view.addSubview(foodflyMenuView)
  }
  
  private func menuAnimation() {
    UIView.animateKeyframes(withDuration: 3, delay: 1, options: [.beginFromCurrentState,.autoreverse], animations: {
      foodflyMenuView
    })
  }

}

