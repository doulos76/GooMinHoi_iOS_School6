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


![](/Img/initializerDelegation02_2x.png)


## Required Initializers

* 상속을 받는 subClass가 꼭 구현해야 함

```swift
class SomeClass {
	required init() {
		// initializer implementation goes here
	}
}
```

* 해당 initializer는 필수적으로 구현해야만 함.
* 상속받은 모든 클래스는 필수로 구현해야 함.
* required initializer를 구혈할 땐 override 수식어를 사용할 필요 없음.

## Setting a Default Property Value with a Closure of Function

```swift
class SomeClass {
	let someProperty: SomeType = {
		// 해당 클로져 안에 프로퍼티의 기본값을 지정함.
		// someValue는 반드시 SomeType과 타입이 같아야 함.
		return someValue
	}()
}
```

* class의 init시 해당 property의 값이 할당되며, 값대신 closure나 전역 함수를 사용할 수 있다.
* closure 사용시 마지막에()를 붙여 closure를 바로 실행 시킴.

## Classes vs Structures

* class는 참조 타입이며, structure 는 값 타입
* class는 상속을 통해 부모클래스의 특성을 상속받을 수 있음.
* class는 Type Casting을 사용할 수 있음(structure 불가)
* Structure의 property는 instance가 var를 통해서 만들어야 수정 가능함.
* class는 Refernece Counting을 통해 instance의 해제를 계산함.
* class는 deinitializer를 사용할 수 있음.

## 값타입 vs 참조타입

### Memory 구조

* 논리적 메모리 구조를 형상화 한 그림

| STACK |    <- 지역 변수, 매개 변수 등     |
|-------|------------------------------|
| HEAP  |    <- 동적 할당을 위한 영역.      |
| DATA  |    <- 전역 변수, 정적 변수가 저장  |
| CODE  |    <- 프로그램 code 저장.       |

#### Memory 구조 파악하기(지역변수)


```swift
var num: Int = 4
var num2: Int = 5
```

* __STACK__ : 지역 변수, 매개 변수 등이 저장됨.

```swift
num = 4, num2 = 5
```

* __CODE__ : 프로그램 code 저장

```swift
var num: Int = 4
var num2: Int = 5
```

#### Memory 구조 파악하기(class, instance)


```swift
let person: Person = Person()
```

* __STACK__ : person = instance 주소

```swift
person: Person
```

* __HEAP__ : Person() = instance

```swift
Person()
```


* __CODE__ : 프로그램 code 저장

```swift
let person: Person = Person()
```

#### Memory 구조 파악하기(static constant)


```swift
static let number: Int = 5
```

* __DATA__ : number = 5

```swift
number = 5
```


* __CODE__ : 프로그램 code 저장

```swift
static let number: Int = 5
```

#### Memory 구조 파악하기(function, parameter)


```swift
func sumTwoNumber(num1: Int, num2: Int) -> Int {
	return num1 + num2
}
```

* __STACK__ : num1 = 3, num2 = 4

```swift
(num1:3, num2: 4)
```

* __CODE__ : 프로그램 code 저장

```swift
func sumTwoNumber(num1: Int, num2: Int) -> Int {
	return num1 + num2
}
```


## Pointer

* Pointer는 Programming lanaguage에서 다른 변수, 혹은 그 변수의 메모리 공간주소를 가리키는 변수를 말함.


## Value type, Reference type

```swift
var name: String = "joo"
var reName: String = name

reName = "wing"
// name의 값은?

let person: Person = Person()
let person2: Person = Person()
person.name = "joo"

person2.name = "wing"
// person 인스턴스의 name 프로퍼티의 값은?
```


## Struct-Value Type 프로퍼티 수정

* 기본적으로 구조체와 열거형의 값타입 프로퍼티는 인스턴스 메소드 내에서 수정이 불가능 함.
* 그러나 특정 메소드에서 수정을 해야 할 경우에는 mutating 키워드를 통해 변경 가능함.

```swift
struct Point {
	var x = 0.0, y = 0.0
	mutating func movebBy(x deltaX: Double, y deltaY: Double) {
		x += deltaX
		y += deltaY
}

```

## Class - Deinit

* example: Notification에 사용

  - 중앙에 모든 인스턴스의 행동을 관리하는 아이가 있을 때, ARC로 사라질 때, notification, singleton에서 init이나 deinit을 통해 알릴 수 있다.



```swift
class Student {
	init() {
		// 인스턴스 생성시 필요한 내용 구현
	}
	
	deinit {
		// 종료직전 필요한 내용 구현
	}
}
```

## Class - 상속

* Subclassing
* 기존에 구현되어있는 클래스를 확장, 변형
* 부모 클래스와 자식 클래스로 관계를 표현

  super class: 추상적, 포괄적
  
  sub class: 구체적

* 상속할수록 더 확장되는 구조
  * 즉, 자식이 기능이 더 많다.

  예제: 동물
  
  움직이는 생물체
  
  포유류
  
  - 새끼를 낳음

  - 움직임

  ![](/Img/class_example.png)
  

## Class의 상속

* class에선 단 하나의 클래스만 상속 받을 수 있음.
* struct, enum은 상속 받을 수 없음.
* 클래스 이름뒤에 (: 부모클래스)fmf cnrkgka.
* protocol과 문법이 같다.
	
	- 프로토콜은 여러개를 받을 수 있음
	- 프로토콜은 rule이다. 법이기 때문에 반드시 꼭 만들어야 함. 지켜야 함.

	- 예)

	```swift
	class ChildClass: ParentClass, Prtocol1, Protocol2, ... {
		// statements
	}
	```
	
## 재정의 (Override)

* override
* 부모 클래스에게서 물려받은 성질을 그대로 사용하지 않고 자식 클래스에게 맞는 형태 또는 행위로 변경하여 사용할 수 있는 기능

```swift
class Person {
	func eat() {
		print("집밥을 먹음")
	}
}

class Student: Person {
	override func eat() {
		print("급식을 먹음")
	}
}

class UniversityStudent: Student {
	override func eat() {
		print("학식을 먹음")
	}
}

```

## 다형성

* 재정의(ovrride)와 중복정의(overload)는 OOP의 다형성의 또 다른 모습
* `Ojective-C`는 __Overload를 지원하지 않음__.
* `swift`는 __Overload를 지원함__.

## Apple guideline : struct를 사용할 경우

* type에 가까울 때: struct
* object에 가까울 때: class

* 연관된 간단하 값의 집합을 캡슐화하는 것만이 목적일 때
* 캡슐화된 값이 참조되는 것보다 복사되는 것이 합당할 때
* 구조체에 저장된 프로퍼티가 값타입이며 참조되는 것보다는 복사되는 것이 합당할 때
* 다른 타입으로부터 상속받거나 자신이 상속될 필요가 없을 때































