//: Playground - noun: a place where people can play

import UIKit

class Student {
  var subjects: [Subject] = []
  
  func addSubject(name: String) {
    var sub1: Subject = Subject(gender: true)
    sub1.name = "joo"
    sub1.age = 30
    subjects.append(sub1)
  }
}

struct Subject {
  var name: String?
  var age: Int?
  var gender: Bool
  
  init(gender: Bool) {
    self.gender = gender
  }
}
