//: Playground - noun: a place where people can play

import Foundation
struct Astronauts: Decodable {
  let message: String
  let number: Int
  let people: [Person]
  
  
  struct Person: Decodable {
    let name: String
  }
}

let jsonString = """
{
  "message": "success"
  "number" : 3
  "people" : [
    {
      "craft": "ISS"
      "name" : "Anton Shkaplerov"
    },
    {
      "craft" : "ISS",
      "name": "Scott Tingle"
    },
    {
      "craft" : "ISS",
      "name" : "Norishinge Kanai"
    }
  ]
}
"""


let jsonData = jsonString.data(using: .utf8)!

do {
  let astronauts = try JSONDecoder().decode(Astronauts.self, from: jsonData)
  print(astronauts.message)
  print(astronauts.number)
  for person in astronauts.people {
    print(person)
  }
} catch {
  print(error.localizedDescription)
}

//struct Astronauts: Decodable {
//  let message: String
//  let number: Int
//  let people: [Person]
//
//  enum CodingKeys: String, CodingKey {
//    case message
//    case number
//    case people
//  }
//
//  struct Person: Decodable {
//    let name: String
//
//    enum CodingKeys: String, CodingKey {
//      case name
//    }
//  }
//}


