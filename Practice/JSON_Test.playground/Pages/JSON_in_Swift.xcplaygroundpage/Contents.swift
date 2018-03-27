//: [Previous](@previous)

import Foundation

let jsonString = """
{
"someNumber": 1,
"someString": "Hello",
"someArray": [ 1, 2, 3, 4],
"someDict": {
"someBool": true
}
}
"""

let jsonData = jsonString.data(using: .utf8)!
let jsonObject = try! JSONSerialization.jsonObject(with: jsonData)
print(jsonObject)



// JSONSerivalization
// * JSON과 이에 상승하는 Foundation객체 간 변환하는 객체이며 iOS 이후로 Thread Safety


//: [Next](@next)
