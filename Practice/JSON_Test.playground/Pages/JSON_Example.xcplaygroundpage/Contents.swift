//: [Previous](@previous)

import Foundation

private func jsonObjectWithData() {
  let jsonString = """
{
"hello": "world",
"foo": "bar",
"iOS": "Swift"
}
"""
  
  let jsonData = jsonString.data(using: .utf8)!
  
  do {
    let jsonObject = try JSONSerialization.jsonObject(with: jsonData)
    if let jsonDict = jsonObject as? [String: Any] {
      print(jsonDict)
    }
  } catch {
    print(error.localizedDescription)
  }
}

jsonObjectWithData()

//: [Next](@next)
