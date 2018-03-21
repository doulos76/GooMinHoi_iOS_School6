//
//  ViewController.swift
//  CircleAnimationTest
//
//  Created by 구민회 on 20/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet private weak var circleView: UIView!
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    circleView.layer.cornerRadius = circleView.bounds.height / 2
    
    circleView.transform = CGAffineTransform(scaleX: 0, y: 0)
    UIView.animate(withDuration: 1,
                   delay: 0,
                   options: .curveLinear,
                   animations: {
                    self.circleView.transform = .identity
    }, completion: nil)

    circleView.transform = CGAffineTransform(scaleX: 0, y: 0)
    UIView.animate(withDuration: 1,
                   delay: 0,
                   options: .curveLinear,
                   animations: {
                    self.circleView.transform = .identity
    }, completion: nil)
    
    
    
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

