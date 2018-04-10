_Swift_ Class
===

# Swift Class Architecture

```swift
class ClassName: SuperClassName
{
    var vName1 = "1"	// 변수
    var vName2 = 4		// 변수
    
    func fName1() -> Any	// 함수
    {
        
    }
    
    func fName2(_ ani: Bool)	// 함수
    {
        
    }
}
```
# 클래스 만들기
```swift
class Person
{

	//  class 내용

}
```
## 변수 & 함수
* 변수 : 프로그램에서 데이터의 저장공간을 담당
* 함수 : 프로그램이 실행되는 행동을 담당

## 변수
### 변수 문법
> __키워드__ + __변수명(Name)__ + __변수 타입(Type)__
> 
> 문법 : __var__ vName: _Any_
>
>  - __var__ : 변수 선언을 위한 Keyword
>  - vName : 변수 이름
>  - _Any_ : 변수의 타입

#### 변수 값 할당
> __변수명(Name) = 값(Value)__
> 
> 문법: __var__ vName: _Any_ = 3

---
## 함수
### 함수를 만들기 위해 필요한 것
> 키워드 + 함수명(Name) + 입력값(Input Value) + 함수내용(Action) + 결과타입(Return Type)
> 

* 문법:
 
```swift
 	func vName(parameter: Any) -> Any  
 	{
 
  		// 함수 내용
  				
	 }
```
* Example

```swift
class 사람
{
	var 이름: String = “"
	// 추가 속성

	func 달리기()
	{		print(“사람이 달려갑니다.”)	
	}
	// 추가 함수
}
 
``` 

## 주석
---
* 컴파일러가 인식할 수 없는 텍스트
* 메모 및 설명을 작성하는 용도로 사용
* 코드의 실해을 막는 경우로 사용

### 한줄 주석

* " __//__ "기호를 사용해서 한줄씩 주석 처리
* __command + /__ 키로 주석 설정/해제 가능

	```swift
		// 한 줄씩 주석 처리
		// 가능합니다.
	
	```

### 여러줄 주석
* " __/*__ " 시작 기호와 " __#/__ " 끝기호를 사용하여 여러 라인의 줄을 모두 주석 처리

	```swift
	/*
		이 안의 모든
		내용은 
		주석으로
		처리 가능합니다.
	*/

	```
### 주석으로 Quick help 문서 만들기
[https://developer.apple.com/library/content/ documentation/Xcode/Reference/ xcode_markup_formatting_ref/ SymbolDocumentation.html#//apple_ref/doc/uid/ TP40016497-CH51-SW1] (https://developer.apple.com/library/content/ documentation/Xcode/Reference/ xcode_markup_formatting_ref/ SymbolDocumentation.html#//apple_ref/doc/uid/ TP40016497-CH51-SW1)

---
## Class 사용하기
* 인스턴스(객체 만들기) 생성

	```swift
	
	사람()
	
	Person()
	```

* 인스턴스 변수에 저장 : 인스턴스를 변수에 저장

	```swift
	
	var 홍길동: 사람 = 사람()
	
	var david: Person = Person()
	```

* 인스턴스의 속성(변수), 함수 접근 및 실행 (닷. 문법 사용)

	```swift
	
	홍길동.이름 = "길동"
	홍길동.달리기()
	
	david.name = "David"
	david.run()
	```
* Swift는 변수 및 함수명으로 한글이 지원됨. 단, 영어가 일반적임

# Class and Structures

## Class & Structures

* Class와 Structure는 당신의 프로그램코드에 범용적이고 유연한 구조로 만들어진 블록임.
* 상수, 변수 및 함수와 동일한 문법을 사용하여 클래스 및 구조체에 프로퍼티와 메서드를 정의함.

"_Classes_ and _structures_ are general-purpose, floexible constructs that becom the building blocks of your program's code.
You define properties and methods to add functionality to your classes and structures by using exactly the same syntax as for constrants, variables, and functions."

----

* 프로그램 코드 블록의 기본 구조임.
* Property와 메서드를 추가할 수 있음.( 두 구조의 문법 같음)
* 단일 파일에 정의 되며(필수는 아님) 다른 코드에서 자동으로 사용할 수 있음.(접근 제한자에 따라 접근성은 차이가 있음. internal기본 접근 제한자)
* 인스턴스 생성 및 초기 상태를 설정하기 위해 initializer(초기화 메서드)를 사용하고, 사용자의 needs에 맞춰 Custom한 initializer를 만들어 사용할 수 있음.
* 둘 구조 모두 메모리에 적재되며 instance라고 불림.
* 기본 블록에 추가하여 확장된 블록을 추가할수있음(extensions)
* Protocol을 채택하여 사용할 수 있음.

## 기본 구조

* class

```swift
class SomeClass {
	// class definition goes here
}
```

* structure

```swift
struct SomeStructure {
	// structure definition goes here
}
```

## 기본 구조(example)

* class


```swift
class VideoMode {
	var resolution = Resolution()
	var interlaced = false
	var frameRate = 0.0
	var name: String?
}
```
clsss는 struct instance를 가질 수 있음.


* structure


```swift
struct Resolution {
	var width = 0
	var height = 0
}
```

struct 는 class instance를 가질 수 없음.

## instance

```swift
// class
let someVideoMode: VideoMode = VideoMode()

// structure
let someResolution: Resolution = Resolution()
```

## Properties 접근

```swift
// class
let someVideoMode: VideoMode = VideoMode()
print("VideoMode is \(someVideoMode.resolution.width)")

// structure
let someResolution: Resolution = Resolution()
print(""Resolution is \(someResolution.width)")
```

## Initialization(초기화)

- 초기화: 갖고 있는 모든 property에 초기값을 지정해야 함.

Initialzation is the process of preparing an instance of a class, struecture, or enumeration for use.


"초기화는 클래스, 구조체, 열거형의 인스턴스를 만들기 위한 주닙 과정으로 사용됨."

- 초기화의 결과물: isntance
- 직전에 해야 할 일: initialization


## 초기화

* instance에 설정된 속성의 초기값을 설정과 초기화하는데 목적이 있음.
* 클래스 및 구조체는 인스턴스로 만들어 질때 모든 프로퍼티는 적절한 초기값으로 모두 초기화 해야 함.
* 구조체는 자동으로 Memberwise Initializwers가 만들어 짐.

## base Initializers

```swift
struct Subject {
	var name: String
}

class Student {
	var subjects: [Subject] = []
	func addSubject(name: String) {
		let subject = Subject(name: name) //<- Memberwise Initializers
		subjects.append(subject)
	}
}

var wingMan: Person = Person() // <- Initizlizers
// is "var wingMan: Person = Person.init()"
```

## Memberwise Initializers

```swift
struct Subject {
	var name: String
}

// 개발자가 초기화 메서드를 정의하지 않으면 구조체는 자동으로 모든 프로퍼티를 대응하는 초기화 메서드를 제공함.
struct Subject {
	var name: String
	
	// memberwise Initializer
	init(name: String) {
		// memberwise Initializer
		self.name = name
	}
}

let subject = Subject(name: name) // <- Memberwise Initializers
// is equal " let subject = Subject.init(name: name)"

```

## Custom Initializers

```swift
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
```
## 상속과 initializers

* Parent Class로 부터 상속받은 모든 저장 속성은 초기화할 때 초기 값을 할당 받아야 함.
* Swift는 class type에 모든 저장 속성에 초기 값을 받도록 도와주는 두가지 initializser를 정의함. 이를 지정 이니셜라이져(designated initializers)와 편의 이니셜라이저(convenience initializers)라고 함.

## Designated initializers

```swift
init(parameters) {
	statements
}
```

* 모든 properties가 초기화 되어야 한다.
* 상속을 받았다며 부모 클래스의 Designated initializers를 호출 해야 함.

## Convenience initializers

```swift
convenience init(parameters) {
	statements
}
```

* 다른 convenience initializer을 호출할 수 있음.
* 하지만 궁극적으론 designated initializer를 호출해야만 함.

## Designated & Convenience 모식도


![initializerDelegation02_2x](/img/initializerDelegation02_2x.png)





































