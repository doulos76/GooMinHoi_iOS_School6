//: Playground - noun: a place where people can play

import UIKit

//: ## Write JSON Object to OutputStream
func writeJSONObjectToOutputStream() {
  let jsonObject = ["hello": "world", "foo": "bar", "iOS": "Swift"]
  guard JSONSerialization.isValidJSONObject(jsonObject) else { return }
  
  let jsonFilePath = "myJsonFile.json"
  let outputJSON = OutputStream(toFileAtPath: jsonFilePath, append: false)!
  outputJSON.open()
  _ = JSONSerialization.writeJSONObject(
    jsonObject,
    to: outputJSON,
    options: [.prettyPrinted, .sortedKeys],
    error: nil
  )
  outputJSON.close()
  
  do {
    let jsonString = try String(contentsOfFile: jsonFilePath)
    print(jsonString)
  } catch {
    print(error.localizedDescription)
  }
}

print("\n---------------- [ writeJSONObjectToOutputStream ] --------------------\n")
writeJSONObjectToOutputStream()

//: ## Data with JSON Object

private func dataWithJSONObject() {
  let jsonObject1: [String: Any] = [
    "someNumber": 1,
    "someString": "Hello",
    "someArray": [1, 2, 3, 4],
    "someDict": [
      "someBool": true
    ]
  ]
  let jsonObject2 = [
    "hello": "world",
    "foo": "bar",
    "1": "2"
  ]
  
  guard JSONSerialization.isValidJSONObject(jsonObject1), JSONSerialization.isValidJSONObject(jsonObject2)
    else { return }
  
  do {
    let encoded = try JSONSerialization.data(withJSONObject: jsonObject2)
    let decoded = try JSONSerialization.jsonObject(with: encoded)
    if let jsonDict = decoded as? [String: Any] {
      print(jsonDict)
    }
  } catch {
    print(error.localizedDescription)
  }
}

print("\n-------------[ dataWithJSONObject ] ---------------\n")
dataWithJSONObject()

//: ## JSON Object with InputStream
private func jsonObjectWithInputStream() {
  let jsonFilePath = "myJsonFile.json"
  let inputStream = InputStream(fileAtPath: jsonFilePath)!
  inputStream.open()
  defer { inputStream.close() }
  
  guard inputStream.hasBytesAvailable else { return }
  
  do {
    let jsonObject = try JSONSerialization.jsonObject(with: inputStream)
    print(jsonObject)
  } catch {
    print(error.localizedDescription)
  }
}

print("\n--------------[ jsonObjectWithInputStream ] ----------------\n")
jsonObjectWithInputStream()
