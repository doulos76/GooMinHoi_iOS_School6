//
//  MyCollectionViewCell.swift
//  CollectionViewTest02
//
//  Created by 구민회 on 05/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.text = "1"
        titleLabel.textColor = UIColor.black
        
    }
    
}

/*
func test() {
    let cal = Calendar(identifier: .gregorian)
    let day = cal.component(.day, from: Date())
    let compo = cal.dateComponents(<#T##components: Set<Calendar.Component>##Set<Calendar.Component>#>, from: <#T##Date#>)
    compo.day
    
    Date()
    
// 코드로 만들 때 사용함.
//    let layout = UICollectionViewFlowLayout()
//    layout.scrollDirection = .vertical
//    let collection = UICollectionView(frame: <#T##CGRect#>, collectionViewLayout: layout)
}

enum WeekDayName: Int {
    case Sun, Mon, Tue
    
    var str: String {
        switch self  {
        case .Sun:
            return "Sun"
        case .Mon:
            return "Mon"
        case .Tue:
            return "Tue"
        }
    }
}
*/
