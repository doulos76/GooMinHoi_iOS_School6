//: [Previous](@previous)

//: ## Dictionary
/// - 딕셔너리는 요소들이 순서 없이 키와 값이 쌍으로 구성되는 컬렉션 타입
/// - 항상 키와 값이 쌍을 이룸
/// - 키는 중복될 수 없음

// Code 4-8: 딕셔너리의 선언과 생성
// typealias를 통해 조금 더 단순하게 표현해 볼 수도 있음.
typealias StringIntDictionary = [String: Int]

// 키는 String, 값은 Int 타입인 빈 딕셔너리 생성
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()

// 동일한 축약 표현
var numberForName0: [String: Int] = [String: Int]()

var numberForName1: StringIntDictionary = StringIntDictionary()

// 딕셔너리의 키와 값 타입을 정확히 명시해 줬다면 [:]만으로도 빈 딕셔너리를 생성할 수 있음
var numberForName2: [String: Int] = [:]

// 초깃값을 주어 생성해 줄 수도 있음
var numberForName3: [String: Int] = ["yagom": 100, "chulsoo": 200, "jenny": 300]

print(numberForName.isEmpty)
print(numberForName3.count)

// 딕셔너리는 각 값에 키로 접근할 수 있음
// 딕셔너리 내부에서 키는 유일해야 하며, 값은 유일하지 않음
// 딕셔너리는 배열과 다르게 딕셔너리 내부에 없는 키로 접근해도 오류가 발생하지 않음. 단 nil을 반환함.
// 특정 키에 해당하는 값을 제거하려면 removeValue(forKey: ) 메서드를 사용함.
// 키에 해당하는 값이 제거된 후 반환됨.

// Code4-9: 딕셔너리의 사용
print(numberForName3["chulsoo"])
print(numberForName3["minji"])

numberForName3["chulsoo"] = 150
print(numberForName3["chulsoo"])

numberForName3["max"] = 999
print(numberForName3["max"])

print(numberForName3.removeValue(forKey: "yagom"))

print(numberForName3.removeValue(forKey: "yagom"))

print(numberForName3["yagom", default: 0])









//: [Next](@next)
