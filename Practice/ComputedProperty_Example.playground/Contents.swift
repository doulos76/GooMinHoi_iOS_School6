//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var testPoint = Point()
testPoint.x = 1
testPoint.y = 1

var testSize = Size()
testSize.width = 1
testSize.height = 1

var testRect = Rect()
testRect.origin = testPoint
testRect.size = testSize
testRect.center
print(testRect.center)
testRect.center.x = 3
testRect.center.y = 3
print(testRect.center)

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

// Property Obsservers 예제

var changeValue: Int = 0 {
    didSet(oldV) {
        print("oldvalue \(oldV)")
    }
    willSet(willV) {
        print("newValue \(willV)")
    }
}

changeValue = 4

struct AudioChannel {
    static let level = 10
    static var maxLevel = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.level {
                currentLevel = AudioChannel.level
            }
            if changeValue > AudioChannel.maxLevel
            {
                AudioChannel.maxLevel = currentLevel
            }
        }
    }
}





















