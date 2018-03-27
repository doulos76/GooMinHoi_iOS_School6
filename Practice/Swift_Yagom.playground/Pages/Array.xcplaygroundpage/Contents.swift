//: [Previous](@previous)

// Code 4-6 : 배열의 선언과 생성

// 대괄호를 사용하여 배열임을 표현함. (1)
var names: Array<String> = ["yagom", "chulsoo", "younghee", "yagom"]

// 위 선언과 정확히 동일한 표현임. [String]은 Array<String>의 축약표현임.
var names1: [String] = ["yagom", "chulsoo", "younghee", "yagom"]

var emptyArray: [Any] = [Any]()   // Any 데이터를 요소로 갖는 빈 배열을 생성함.
var emptyArray1: [Any] = Array<Any>() // 위 선언과 정확히 같은 동작을 하는 코드

// 배열의 타입을 정확히 명시해줬다면 []만으로도 빈 배열을 생성할 수 있음
var emptyArray2: [Any] = []
print(emptyArray.isEmpty)   // prints true
print(names.count)          // prints 4

// Code 4-7 : 배열의 사용
print(names[2])
names[2] = "jenny"
print(names[2])
//print(names[4])

//names[4] = "else"
names.append("elsa")
names.append(contentsOf: ["john", "max"])
names.insert("happy", at: 2)
names.insert(contentsOf: ["jinhee", "minsoo"], at: 5)

print(names[4])
print(names.index(of: "yagom"))
print(names.index(of: "christal"))
print(names.first)
print(names.last)

let firstItem: String = names.removeFirst()
let lastItem: String = names.removeLast()
let indexZeroItem: String = names.remove(at: 0)

print(firstItem)
print(lastItem)
print(indexZeroItem)
print(names[1 ... 3])




//: [Next](@next)
