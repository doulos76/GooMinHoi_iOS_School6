//
//  ViewController.swift
//  MakeUIView4
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //font 알아오기
        //printAllFontName()
        
        // 한개 만들기 코드
//        let item1 = ItemView(frame: CGRect(x: 25, y: 50, width: 100, height: 100))
//        item1.title = "제목위치"
//        item1.descriptionText = "추가 설명글"
//        item1.image = UIImage(named:"sea.jpg")
//        item1.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
//        self.view.addSubview(item1)

        makeItemView(with: 4)
        
    }
    
    func makeItemView(with count: Int) {
        for index in 0..<count {
            let col: CGFloat = CGFloat(index % 2)
            let row: CGFloat = CGFloat(index / 2)
            let margin: CGFloat = 30
            
            let itemView = ItemView(frame: CGRect(x: (margin * (col + 1)) + (150 * col),
                                                  y: (margin * (row + 1)) + (150 * row),
                                                  width: 150,
                                                  height: 150))
            itemView.title = "제목위치"
            itemView.descriptionText = "추가 설명글"
            itemView.image = UIImage(named: "sea.jpg")
            itemView.index = index
            
            itemView.addTarget(self, action: #selector(self.btnAction(_:)), for: .touchUpInside)
            
            view.addSubview(itemView)
        }
    }
    
    @objc func btnAction(_ sender: UIButton) {
        print("\(sender.tag) 아이템이 클릭되었습니다.")
    }

    
    
    
    // 폰트 알아오기
    func printAllFontName() {
        let familyNames = UIFont.familyNames
        for fn in familyNames {
            print("====\(fn)====")
            
            let fontNames = UIFont.fontNames(forFamilyName: fn)
            for fontName in fontNames
            {
                print("ㄴ>> \(fontName)")
            }
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
