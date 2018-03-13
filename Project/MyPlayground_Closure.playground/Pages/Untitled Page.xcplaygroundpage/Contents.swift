//: Playground - noun: a place where people can play

import UIKit

func performClosure(param: (String) -> Int) {
    print(param("Swift"))
}

performClosure(param: { (str: String) -> Int in
    return str.count
})

performClosure(param: { (str: String) in
    return str.count
})

performClosure(param: { str in
    return str.count
})

performClosure(param: {
    return $0.count
})

performClosure(param: {
     $0.count
})

performClosure(param: ) {
    $0.count
}

performClosure() {
    $0.count
}

performClosure {
    $0.count
}

performClosure { $0.count }


