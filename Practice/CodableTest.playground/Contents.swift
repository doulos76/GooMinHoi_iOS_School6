//: Playground - noun: a place where people can play

import UIKit

let sample1Data = """
{
    "a": "aa",
    "b": "bb"
}
""".data(using: .utf8)!



struct Sample1: Codable {
    var a: String
    var y: String
    
    enum CodingKeys: String, CodingKey {
        case a, y = "b"
    }
}

let sample1 = try! JSONDecoder().decode(Sample1.self, from: sample1Data)
print(sample1)

let sample2Data = """
{
    "a": "aa",
    "b": "bb",
    "list" = [{"a": "aa"}]
}
""".data(using: .utf8)!

struct Sample2: Codable {
    var a: String
    var b: String
    var list: [Sample3]
}

struct Sample3: Codable {
    var a: String
}

let sample2 = try! JSONDecoder().decode(Sample2.self, from: sample2Data)
print(sample2)
