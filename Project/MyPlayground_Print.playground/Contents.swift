//: Playground - noun: a place where people can play

import UIKit

final class Person {
    let name = "홍길동"
    let age = 20
}

let person = Person()

print(person.name)
debugPrint(person.name)
dump(person.name)

print(String(describing: person))
print(String(reflecting: person))

extension Person: CustomStringConvertible, CustomDebugStringConvertible {
    var description: String {
        return "myDescription: \(self.name), \(self.age)"
    }
    var debugDescription: String {
        return "myDebugDescription"
    }
}

let person1 = Person()

print(person1.name)
debugPrint(person1.name)
dump(person1.name)

print(String(describing: person1))
print(String(reflecting: person1))
debugPrint(person1.name)
dump(person1.name)

print(person.description)
print(person.debugDescription)



public protocol LosslessStringConvertible: CustomStringConvertible {
    init?(_ description: String)
}

let person2 = Person()

print(String(1))

struct Dog {
    let age = 1
}

let dog = Dog()
//print(String(dog))
print(String(describing: dog))

struct Cat: LosslessStringConvertible {
    let age = 1
    let description: String
    init?(_ description: String) {
        self.description = description
    }
    
}

let cat = Cat("I'm cat")!
//print(String(cat))


var name = "crazy"
print(" dog", to: &name)
print(name)






