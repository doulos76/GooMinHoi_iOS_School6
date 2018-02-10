//
//  Rect.swift
//  OperationProperites
//
//  Created by 구민회 on 2018. 1. 26..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set (newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
