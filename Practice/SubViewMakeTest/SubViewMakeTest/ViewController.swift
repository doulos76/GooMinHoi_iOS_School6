//
//  ViewController.swift
//  SubViewMakeTest
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        makeItemView(with: 4)
        
    }
    
    func makeItemView(with count: Int) {
        for index in 0..<count {
            let column: CGFloat = CGFloat(index % 2)
            let row: CGFloat = CGFloat(index / 2)
            let margin: CGFloat = 30
            
            let itemView = MySubView(frame: CGRect(x: (margin * (column + 1)) + (150 * column),
                                                   y: (margin * (row + 1)) + (150 * row),
                                                   width: 150,
                                                   height: 150))
            itemView.index = index
            itemView.mainTitleText = "Main Title"
            itemView.subTitleText = "Sub Title \(itemView.index)"
            itemView.image = UIImage(named: "buttonImage")
            itemView.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
            view.addSubview(itemView)
        }
    }

    @objc func btnAction(_ sender: UIButton) {
        print("\(sender.tag) 아이템이 클릭되었습니다.")
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

