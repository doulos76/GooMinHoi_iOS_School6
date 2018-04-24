//
//  AudioBook.swift
//  CollectionViewTest2
//
//  Created by dave on 17/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import Foundation

struct AudioBook {
    let name: String
    let author: String
    let coverImage: String
    
    init(dictionary: AudioBookJSON) {
        self.name = dictionary["nmae"] as! String
        self.author = dictionary["artistName"] as! String
        self.coverImage = dictionary["artworkUrl100"] as! String
    }
}
