# Optional #

## nil이란? ##

* nil : data - 아무것도 없다는 data

nil의 개념이 필요한 것을 확인하기 위해서 Person class를 만듦

```swift
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}
```
초기값을 넣어서 정상적인 상태

```swift
let person1: Person = Person(name: "joo")
print(person1.name)
// "joo"

```
초기값을 넣지 않았을 경우 Error 발생

```swift
let person2: Person
print(person2.name)

// 결과
//Playground execution failed:
//
//error: Optional.playground:12:7: error: constant 'person2' used before being initialized
//print(person2.name)
//^
//
//Optional.playground:11:5: note: constant defined here
//let person2: Person

//=> 변수에 선언후 초기화를 하지 않은 상태는 nil임.
```

## Type Safety ##

* nil인 상태에서 속성을 참조하거나, 함수를 실행시 발생하는 error로 인한 코드의 불안정성 내포
* swift의 중요한 특징 중 하나는 Safety
* Type Safety를 위해 compier수준의 nil check
* 만약 nil인 변수 선언을 해야할 경우 optional을 사용함.
* __optional은 두가지 가능성을 가질 수 있는데 한개는 값이 있음을 나타내고, 또 다른 한가지는 nil일 가능성을 내포하고 있음. (?기호 사용)__

## Optional Type ##
### ! ###
> 해당 변수에는 값이 항상 존재한다.

```swift
var person: Person!
var name: String!
var age: Int!
var subjects: [Int]!
```
### ? ###
> 해당 변수에 값이 있을수도 있고, nil일 수도 있다.

```swift
var person: Person?
var name: String?
var age: Int?
var subjects: [Int]?
```

__!__ 과 __?__ 비교

```swift
var Person: Person!
person = Person()
person.run()
```
- 만약 person가 초기화 안되어 있다면! __프로그램이 멈춤__

```swift
var Person: Person?
person = Person()
person?.run()
person1.run()
```
- person?.run()

	만약 person가 초기화가 안되어 있다면! __run()이 실행이 안됨__
	
- person!.run()

	만약 person가 초기화 안되어 있다면! __프로그램이 멈춤__


## Unwarapping ##

Optional 변수에 값이 있음을 확인하여 일반 변수로 전환해 준다.

* Forced Unwrapping
* Optional Binding
* Early Exit

## 강제 해제(Fored Unwrapping) ###

```swift
/// Forced Unwrapping
func testFunc(optionalStr: String?) {
    if optionalStr != nil {
        let unwrapStr: String = optionalStr!
        print(unwrapStr)
    }
}
```
## 선택적 해제(Optional Binding) ##

```swift
/ Optional Binding - example
func isNumber(inputNum: String) -> Bool {
    if let firstNumber = Int(inputNum) {
        print("\(firstNumber)")
        return true
    } else {
        return false
    }
}

isNumber(inputNum: "3")
isNumber(inputNum: "A")

func isNumber2(inputNum1: String, inputNum2: String) -> Bool {
    if let firstNumber = Int(inputNum1), let secondNumber = Int(inputNum2) {
        return true
    } else {
        return false
    }
}
// (,)콤마를 통해 optional binding을 추가하고, 또 조건도 추가 할 수 있음.
```

* (,)콤마를 통해 optional binding을 추가하고, 또 조건도 추가 할 수 있음.

## Early Exit - gurad문 ##

```swift
guard 조건값 else
{
	// 조건값이 거짓일 때 실행
	// 종료 조건이 항상 필요
}
```

## Early Exit ##
```swift
func testFuc(optionalStr: String?)
{
    guard let unwrapStr: String = optionalStr else
    {
        print("exit")
        return
    }
    print(unwrapStr)
}

testFuc(optionalStr: nil) // >>> exit
testFuc(optionalStr: "test") // >>> test
```



