//
//  ViewController.swift
//  GestureExample
//
//  Created by 구민회 on 06/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var tapGesture: UIGestureRecognizer!
    
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var coordinatesLabel: UILabel!
    
    
    @IBOutlet var picker: UIPickerView!

    var myView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myView = UIView()
        myView?.frame = CGRect(x: self.view.frame.width / 2, y: self.view.frame.height / 2, width: 25, height: 25)
        myView?.backgroundColor = UIColor.blue
        myView?.layer.cornerRadius = 25
        self.view.addSubview(myView!)
        
        picker = UIPickerView()
        
    }
    
    let list1 = ["A", "B", "C", "D", "E", "F"]
    let list2 = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return list1.count
        } else if component == 1{
            return list2.count
        }
        return list1.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return list1[row]
        } else {
            return list2[row]
        }
        //return list1[row]
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func taptap(_ sender: UITapGestureRecognizer) {
        
    }
    
    @IBAction func panGesture(_ sender: UITapGestureRecognizer) {
        print("pan")
        coordinatesLabel.text = "\(tapGesture.location(in: self.view))"
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        //print("X position", touch.location(in: touch.view).x)
        //print("Y position", touch.location(in: touch.view).y)
        //print("touch timeStamp", touch.timestamp)
        //print("touch tapCount", touch.tapCount)
        
        coordinatesLabel.text = String("X:\(touch.location(in: touch.view).x), Y: \(touch.location(in: touch.view).y)")
        myView?.frame = CGRect(x: touch.location(in: touch.view).x - 25, y: touch.location(in: touch.view).y - 25, width: 50, height: 50)
        countLabel.text = String(touch.tapCount)
        return true
    }
    
}

