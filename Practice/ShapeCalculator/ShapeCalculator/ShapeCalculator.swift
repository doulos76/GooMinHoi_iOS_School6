//
//  ShapeCalculator.swift
//  ShapeCalculator
//
//  Created by 구민회 on 2018. 2. 4..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class Shape {
    var length: Double
    var width: Double
    var area: Double
    var perimeter: Double
    
    init() {
        self.length = 0
        self.width = 0
        self.area = 0
        self.perimeter = 0
    }
    
    convenience init(length: Double, width: Double, area: Double, perimeter: Double) {
        self.init()
        self.length = length
        self.width = width
        self.area = area
        self.perimeter = perimeter
    }
    
    func calculateArea(length: Double, width: Double) -> Double{
        let result: Double = length * width
        return result
    }
    
    func calculatePerimeter(length: Double, width: Double) -> Double {
        let result: Double = length * 2 + width * 2
        return result
    }
}

class GeomatricShapeIn2D: Shape {
    let PI: Double = 3.141592
    var height: Double
    
    override init() {
        height = 0
        super.init()
    }
}

class GeomatricShapeIn3D: GeomatricShapeIn2D {
    
}

class Rectangle: GeomatricShapeIn2D {
    override func calculateArea(length: Double, width: Double) -> Double {
        area = length * width
        return area
    }
    
    override func calculatePerimeter(length: Double, width: Double) -> Double {
        perimeter = (length + width) * 2
        return perimeter
    }
    
}

class Square: Rectangle {
    func calculateArea(length: Double) -> Double {
        area = length * length
        return area
    }
    
    func calculatePerimeter(length: Double) -> Double {
        perimeter = 4 * length
        return perimeter
    }
    
}

class Circle: GeomatricShapeIn2D {
    func calculateArea(radius length: Double) -> Double {
        area = PI * length * length
        return area
    }
    
    func calculatePerimeter(radius length: Double) -> Double {
        let circumference: Double = 2 * PI * length
        return circumference
    }
}

class Triangle: GeomatricShapeIn2D {
    func calculateArea(width: Double, height: Double) -> Double {
        area = (1 / 2) * width * height
        return area
    }
}

class Trapezoid: GeomatricShapeIn2D {
    var topLength: Double = 0
    var bottomLength: Double = 0
    func calculateArea(top topLength: Double, bottom bottomLength: Double, height: Double) -> Double {
        area = (1 / 2) * height * (topLength + bottomLength)
        return area
    }
}



