//: # Basic Codable
import Foundation

struct Dog: Decodable {
  let age: Int
  let name: String
  
  private enum CodingKeys: String, CodingKey {
    case age
    case name
  }
  
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    age = try values.decode(Int.self, forKey: .age)
    name = try values.decode(String.self, forKey: .name)
  }
}

extension Dog {
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    age = try values.decode(Int.self, forKey: .age)
    name = try values.decode(String.self, forKey: .name)
  }
}


func basic() {
  let jsonData = """
  {
    "age": 3,
    "name": "Tory"
  }
  """.data(using: .utf8)!
  
  let dog = try! JSONDecoder().decode(Dog.self, from: jsonData)
  print(dog)
}

func array() {
  let jsonData = """
[
  {
    "age": 3,
    "name": "Tory"
  },
  {
    "age": 3,
    "name": "Tory"
  }
]
""".data(using: .utf8)!
  
  let dogs = try! JSONDecoder().decode([Dog].self, from: jsonData)
  dogs.forEach { print($0) }
}

func dictionary() {
  let jsonData = """
{
  "first": {
    "age": 3,
    "name": "Tory"
  },
  "second": {
    "age": 3,
    "name": "Tory"
  }
}
""".data(using: .utf8)!
  
  let dogs = try! JSONDecoder().decode([String: Dog].self, from: jsonData)
  for (key, value) in dogs {
    print(key, value)
  }
}


basic()
//array()
//dictionary()



//: [Next](@next)
