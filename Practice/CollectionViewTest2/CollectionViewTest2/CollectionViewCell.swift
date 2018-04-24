//
//  CollectionViewCell.swift
//  CollectionViewTest2
//
//  Created by dave on 17/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var bookImage: UIImageView!
    @IBOutlet var bookLabel: UILabel!
    
    func displayContent(image: UIImage, title: String) {
        bookImage.image = image
        bookLabel.text = title
    }
    
}
