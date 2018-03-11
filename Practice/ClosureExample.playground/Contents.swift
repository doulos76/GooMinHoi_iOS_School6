//: Playground - noun: a place where people can play

import UIKit

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1}
    func stepBackward(input: Int) -> Int { return input - 1}
    
    return backward ? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}

self.present(nextVC, animated: true, completion: ( () -> void) ?)

let alert = UIAlertAction(title: "알럿", style: .default, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)

UIView.animate(withDuration: 0.3,
               animations: <#T##() -> Void#>,
               completion: ((Bool) -> Void)?)
