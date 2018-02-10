//
//  ViewController.swift
//  PagingTest
//
//  Created by 구민회 on 2018. 2. 8..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchToXibVcButton(_ sender: Any) {
        let xibVC = XIBViewController()
        self.present(xibVC, animated: true, completion: nil)
    }
    
    @IBAction func action2(_ sender: Any) {
        let alertVC  = UIAlertController(title: "확인", message: "작성하신 정보가 맞습니까?", preferredStyle: .alert)
//        let alertVC  = UIAlertController(title: "확인", message: "작성하신 정보가 맞습니까?", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "네", style: .default) { (action) in
            // 해당 버튼이 클릭되면 해야될 행동
            print("OK")
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let nextVC: NextViewController = storyboard.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
            nextVC.modalTransitionStyle = .partialCurl
            self.present(nextVC, animated: true, completion: nil)
            
        }
        let action2 = UIAlertAction(title: "아니요", style: .cancel) { (action) in
            // 취소시 해야될 행동
            print("cancel")
        }
        
        alertVC.addAction(action1)
        alertVC.addAction(action2)
        
        self.present(alertVC, animated: true, completion: nil)
        
    }
    @IBAction func touchToVc2Button(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let nextVC: NextViewController = storyboard.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
//        self.present(nextVC, animated: true, completion: nil)
    }
    
    // nib file이 없는 경우
    @IBAction func touchToVC4Button(_ sender: Any) {
        let noNibVC = NoNibViewController()
        self.present(noNibVC, animated: true, completion: nil) //as! NoNibViewController
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "mainToNext" {
            return false
        } else {
            return true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? NextViewController {
            nextVC.title = self.title
        }
//        if let secondVC = segue.destination as? ViewController {
//
//        }
    }
    
    @IBAction func goToVCX(_ sender: Any) {
        let alertVC = UIAlertController(title: "Confirm", message: "Are you OK?", preferredStyle: UIAlertControllerStyle.alert)
        let action1 = UIAlertAction(title: "I'm OK", style: UIAlertActionStyle.default) { (action) in
            //
        }
        let action2 = UIAlertAction(title: "so so", style: .cancel) { (action) in
            //
        }
        
        alertVC.addAction(action1)
        alertVC.addAction(action2)
        self.present(alertVC, animated: true, completion: nil)
    }
    

}

