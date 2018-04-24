//
//  ViewController.swift
//  ImageExpansion2
//
//  Created by dave on 24/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var tap: UIGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        tap.delegate = self
        
        
    }

    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        print("tapped")
        return true
    }


}

