//: Playground - noun: a place where people can play

import UIKit

class FishBread {
    var matrials: [Stirng] = []
    init() {
        self.matrials = matrials
    }
    
    func putOnMatrials(){
        print("put on 밀가루, 앙꼬 등")
    }
    
    func baking() {
        print("baking")
    }
    
}



open class Vehicle {
    let wheels: Int
    init(wheels: Int) {
        self.wheels = wheels
    }
}

class Car : Vehicle {
    
}

let avante: Car = Car(wheels: 4)

avante.wheels


