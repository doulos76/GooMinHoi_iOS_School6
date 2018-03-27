//: [Previous](@previous)

//: ## Set
/// - 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬레션 타입
/// - 세트 내의 값은 모두 유일한 값, 중복된 값이 존재하지 않음.
/// - 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우에 사용함.
/// - 세트의 요소로는 해시 가능한 값이 들어와야 함.(스위프트 표준 라이브러리의 Hashable 프로토콜을 따른다는 것을 의미함. 스위프크의 기본 데이터 타입은 모두 해시 가능한 값.

// Code 4-10: 세트의 선언과 생성
var names: Set<String> = Set<String>()    // 빈 세트 생성
var names1: Set<String> = []              // 빈 세트 생성

// Array와 마찬가지로 대괄호를 사용함.
var names2: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]

// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set가 아닌 Array로 타입을 지정함.
var numbers3 = [100, 200, 300]
print(type(of: numbers3))

print(names2.isEmpty)
print(names2.count)

// Code 4-11: 세트의 사용
print(names.count)
names.insert("jenny")
print(names.count)

print(names.remove("chulsoo"))
print(names.remove("john"))








//: [Next](@next)
