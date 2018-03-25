# Delegate Pattern

## Protocol

* Protocol은 원하는 작업이나 기능을 구현되도록 mathod, property 등으로 요구 사항의 청사진을 정의함
* Class, Structure, Enum 은 Protocol을 채택하면, Protocol에서 요구한 사항에 대해 구현해야 됨.
* Protocol을 통해 공통적인 작업을 강제 할 수 있으며, 해당 Protocol을 채택한 사람이 구현한 mathod에 대한 정보도 알 수 있음.

## Protocol 문법

```swift
// Protocol 문법
protocol Runable {
  var regCount: Int { get set }
  func run()
}

class Animal: Runable {
  var regCount: Int = 0
  func run() {
  }
}
```

## Protocol 채택
```swift
protocol Runable {
  var regCount: Int { get set }
  func run()
}

protocol Flying: Runable {
  var wingCount: Int { get set }
}

class Animal : Flying {
  var wingCount: Int = 0
  var regCount: Int = 0
  func run() {
    
  }
}
```

## 추상 클래스로의 Protocol

Protocol을 추상 class처럼 사용할 수 있다.

다음고 같은 class가 있고, racing이라는 함수를 구현하려고 한다면!

```swift
class Dog: Runable {
	// ...
}

class Horse: Runable {
	// ...
}

func racing(animals: [Runable]) -> Runable {

}
```

Protocol Type으로 사용가능하다.
```swift
let winner : Runable = racing(animals: [Dog(), Horse()])
```

## Delegate 

* Delegate는 Class나 Struct에서의 일부분의 할 일을 다른 instance에게 대신하게 하는 Design Pattern.
* View가 받은 event나 state를 ViewController에게 전달해 주기 위해 주로 사용됨.
  - (ex. UIScrollViewDelegate...)

* ViewController를 통해 View구성에 필요한 Data를 받는 용도로도 사용.

  - (ex. UITableViewDataSource)

  
  
# 프로토콜
  

## 프로토콜이란?
  
프로토콜: __특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진__을 정의함.
  
구조체, 클래스, 열거형은 Protocol을 채택(Adopted)해서 특정 기능을 실행하기 위한 Protocol의 요구 사항을 실제로 구현할 수 있음.
  
어떤 프로토콜의 요구사항을 모두 따르는 타입은 '해당 프로토콜을 준수한다.(conform)'고 표현함.
  
타입에서 프로토콜의 요구사항을 충족시키려면 프로토콜이 제시하는 청사진의 기능을 모두 구현해야 함.
  
  __프로토콜은 정의를 하고 제시할 뿐이지 스스로 기능을 구현하지는 않음__
  
  
## 프로토콜의 정의

`protocol`키워드 사용

```swift
protocol 프로토콜 이름 {
	프로토콜 정의
}
```

구조체, 클래스, 열거형 등에서 protocol을 채택하려면 type이름 뒤에 콜론(:)을 붙여준 후 protocol 이름을 쉼표(,)로 구분하여 명시해 줌.

### type의 protocol 채택


```swift
sturct SomeStruct: AProtocol, AnotherProtocol {
	// 구조체 정의
}

class SomeClass: AProtocol, AnotherProtocol {
	// 클래스 정의
}

enum SomeEnum: AProtocol, AnotherProtocol {
	// 열거형 정의
}
```

클래스가 다른 클래스를 상속받는다면 상속받을 클래스 이름 다음에 채택할 프로토콜을 나열해 줌.

```swift
class SomeClass: SuperClass, AProtocol, AnotherProtocol {
	// 클래스 정의
}
```

## 프로토콜 요구사항

Protocol은 type이 특정 기능을 실행하기 위해 필요한 기능을 요구함. Protocol이 자신을 채택한 타입에 요구하는 사항은 프로퍼티나 메서드와 같은 기능들임.

### Property 요구

protocol은 자신을 채택한 타입이 어떤 프로퍼티를 구현해야 하는지 요구할 수 있음.

하지만, Protocol은 그 property의 종류(연산 프로퍼티, 저장 프로퍼티...)는 따로 신경 쓰지 않음.

Protocol을 채택한 타입은 protocol이 요구하는 property의 이름과 type만 맞도록 구현해 주면 됨.

다만, property를 읽기 전용으로 할지 혹은 읽기/쓰기 가 모두 가능하게 할지는 protocol이 정해야 함.

Protocol의 property 요구사항은 항상 `var` 키워드를 사용한 변수 프로퍼티로 정의함. 읽기와 쓰기가 모두 가능한 프로퍼티는 프로퍼티의 정의 뒤에 { get set } 이라고 명시하며, 읽기 전용 property는 프로퍼티의 정의 뒤에 { get }이라고 명시해 줌.

#### Property 요구

```swfit
protocol SomeProtocol {
	var settableProperty: String { get set }
	var notNeedToBeSettableProperty: String { get }
}

protocol AnotherProtocol {
	static var someTypeProperty: Int { get set }
	static var anotherTypeProperty: Int { get }
}
```

#### Sendable Protocol 과 Sendable Protocol을 준수하는 Message와 Mail Class
```swift
// Protocol 선언
protocol Sendable {
  var from: String { get }
  var to: String { get }
}

// Sendable Protocol을 채택한 Message Class
class Message: Sendable {
  var sender: String
  var from: String {
    return self.sender
  }
  
  var to: String
  
  init(sender: String, receiver: String) {
    self.sender = sender
    self.to = receiver
  }
}

// Sendable Protocol을 채택한 Mail Class
class Mail: Sendable {
  var from: String
  var to: sender
  
  init(sender: String, receiver: String) {
    self.from = sender
    self.to = receiver
  }
}
```

### Method 요구

Protocol은 특정 instance나 method나 type method를 요구할 수도 있음. Protocol이 요구할 method는 protocol 정의에서 작성함.

다만 method의 실제 구현부인 중괄호 ({}) 부분은 제외하고 method의 이름, 매개변수, 반환타입 등만 작성하며 가변 매개변수도 허용함.

Protocol의 Method 요구에서는 매개변수 기본값을 지정할 수 없음. Type Method를 요구할 때는 type property 요구와 마찬가지로 앞에 static 키워드를 명시함. static 키워드를 사용하여 요구한 type 메서드를 class에서 실제 구현할 때는 static 키워드나 class 키워드 어느 쪽을 사용해도 무방함.

#### Receivable, Sendable Protocol과 두 Protocol을 준수하는  Message 와 Mail class

```swift
// Receiveable, Sendable Protocol과 두 Protocol을 준수하는 Message와 Mail Class

// 무언가를 수신받을 수 있는 기능
protocol Receiveable {
  func received(data: Any, from: Sendable)
}

// 무언가를 발신할 수 있는 기능
protocol Sendable {
  var from: Sendable { get }
  var to: Receiveable? { get }
  
  func send(data: Any)
  
  static func isSendableInstance(_ instance: Any) -> Bool
}

// 수신, 발신이 가능한 Message 클래스
class Message: Sendable, Receiveable {
  // 발신은 발신 가능한 객체, 즉 Sendable 프로토콜을 준수하는 타입의 인스턴스여야 함.
  var from: Sendable {
    return self
  }
  
  // 상대방은 수신 가능한 객체, 즉 ReciReceiveable 프로토콜을 준수하는 타입의 인스턴스여야 함.
  var to: Receiveable?
  
  // 메시지를 발신함
  func send(data: Any) {
    guard let receiver: Receiveable = self.to else {
      print("Message has no reciver")
      return
    }
    // 수신 가능한 인스턴스의 received 메서드를 호출함.
    receiver.received(data: data, from: self.from)
  }
  
  // 메시지를 수신함
  func received(data: Any, from: Sendable) {
    print("Message received \(data) from \(from)")
  }
  
  // class 메서드이므로 상속이 가능함.
  class func isSendableInstance(_ instance: Any) -> Bool {
    if let sendableInstance: Sendable = instance as? Sendable {
      return sendableInstance.to != nil
    }
    return false
  }
}

// 수신, 발신이 가능한 Mail 클래스
class Mail: Sendable, Receiveable {
  var from: Sendable {
    return self
  }
  
  var to: Receiveable?
  
  func send(data: Any) {
    guard let receiver: Receiveable = self.to  else {
      print("Mail has no received")
      return
    }
    receiver.received(data: data, from: self.from)
  }
  
  func received(data: Any, from: Sendable) {
    print("Mail received \(data) from \(from)")
  }
  
  // static 메서드이므로 상속이 불가능함.
  static func isSendableInstance(_ instance: Any) -> Bool {
    if let sendableInstance: Sendable = instance as? Sendable {
      return sendableInstance.to != nil
    }
    return false
  }
}

// 두 Message 인스턴스를 생성함.
let myPhoneMessage: Message = Message()
let yourPhoneMessage: Message = Message()

// 아직 수신받을 인스턴스가 없습니다.
myPhoneMessage.send(data: "Hello")  // Message has no reciver

// Message 인스턴스는 발신과 수신이 모두 가능하므로 메시지를 주고 받을 수 있습니다.
myPhoneMessage.to = yourPhoneMessage
myPhoneMessage.send(data: "Hello")  // Message received Hello from __lldb_expr_214.Message

// 두 Mail 인스턴스를 생성함.
let myMail: Mail = Mail()
let yourMail: Mail = Mail()

myMail.send(data: "Hi") // Mail has no received

// Mail과 Message 모두 Sendable과 Receiveable 프로토콜을 준수하므로 서로 주고 받을 수 있음
myMail.to = yourMail
myMail.send(data: "Hi") // Mail received Hi from __lldb_expr_252.Mail

myMail.to = myPhoneMessage
myMail.send(data: "Bye")  // Message received Bye from __lldb_expr_261.Mail

// String은 Sendable Protocol을 준수하지 않음
Message.isSendableInstance("Hello")   // false

// Mail과 Message는 Sendable프로토콜을 준수함.
Message.isSendableInstance(myPhoneMessage)  //true

// yourPhoneMessabe는 to 프로퍼티가 설정되자 않아서 보낼 수 없는 상태임.
Message.isSendableInstance(yourPhoneMessage)  // false
Mail.isSendableInstance(myPhoneMessage)       // true
Mail.isSendableInstance(myMail)               // true

```

__Note:__ Type으로서의 Protocol

```
Protocol은 요구만 하고 스스로 기능을 구현하지는 않음. 그렇지만 프로토콜은 코드에서 완전한 하나의 타입으로 사용되기에 여러 위치에서 프로토콜을 타입으로 사용할 수 있음

- 함수, 메소드, 이니셜라이저에서 매개변수 타입이나 반환 타입으로 사용될 수 있음.
- 프로퍼티, 변수, 상수 등의 타입으로 사용될 수 있음
- 배열, 딕셔너리 등 컨테이너 요소의 타입으로 사용될 수 있음

프로토콜은 스위프트의 다른 타입들과 마찬가지로 이름을 정할 때 UpperCamelCase를 사용함.
```

### 가변 메서드 요구

* `mutating` : struct, enum의 경우 가변 메서드들 필요로 할 때 사용


```swift
protocol Resettable {
	mutating func reset()
}

class Person: Resettable {
	var name: String?
	var age: Int?
	
	func reset() {
		self.name = nil
		self.age = nil
	}
}

struct Point: Resettable {
	var x: Int = 0
	var y: Int = 0
	
	mutating func reset() {
		self.x = 0
		self.y = 0
	}
}

enum Direction: Resettable {
	case east, west, south, north, unknown
	
	mutating func reset() {
		self = Direction.unknown
	}
}
```

### Initializer 요구


#### Protocol의 initializer 요구와 구조체의 initializer 요구 구현
```swift
protocol Named {
	var name: String { get }
	
	init(name: String)
}

struct Pet: Named {
	var name: String
	
	init(name: String) {
		self.name = name
	}
}
```

#### class의 initializer 요구 구현

```swift
class Person: Named {
	var name: String
	
	required init(name: String) {
		self.name = name
	}
}
```

class type에서 protocol의 initializer 요구에 부합하는 initializer를 구현할 때는 initializer가 지정 initializer인지 편의 initializer인지는 중요하지 않음. 

initializer 요구에 부합하는 initializer를 구현할 때는 `required` 식별자를 붙인 요구 이니셜라이저로 구현해야 함.

클래스 자체가 상속받을 수 없는 final class라면 required 식별자를 붙여줄 필요가 없음. 상속할 수 없는 클래스의 요청 이니셜라이저 구현은 무의미하기 때문


##### 상속 불가능한 클래스의 이니셜라이저 요구 구현 

```swift
final class Person: Named {
	var name: String
	
	init(name: Stirng) {
		self.name = name
	}
}
```

특정 클래스에 프로토콜이 요구하는 이니셜라이저가 이미 구현되어 있는 상황에서 그 클래스를 상속받은 클래스가 있다면 `required`와 `override` 식별자를 모두 명시하여 protocol에서 요구하는 이니셜라이저를 구현해 주어야 함.

##### 상속받은 클래스의 이니셜라이저 요구 구현 및 재정의

```swift
class School {
	var name: String
	
	init(name: String) {
		self.name = name
	}
}

class MiddleSchool: School, Named {
	required override init(name: Stirng) {
		super.init(name: name)
	}
}
```

##### 실패 가능한 initializer 요구를 포함하는 Named 프로토콜과 Named 프로토콜을 준수하는 다양한 타입들

```swift

protocol Named {
  var name: String { get }
  
  init?(name: String)
}

struct Animal: Named {
  var name: String
  
  init!(name: String) {
    self.name = name
  }
}

struct Pet: Named {
  var name: String
  
  init(name: String) {
    self.name = name
  }
}

class Person: Named {
  var name: String
  
  required init(name: String) {
    self.name = name
  }
}

class School: Named {
  var name: String
  required init?(name: String) {
    self.name = name
  }
}

```
## 프로토콜의 상속과 클래스 전용 프로토콜

프로토콜은 하나 이상의 프로토콜을 상속받아 기존 프로토콜의 요구사항보다 더 많은 요구사항을 추가할 수 있음.

프로토콜 상속 문법은 클래스의 상속 문법과 유사함

```swift

protocol Readable {
  func read()
}

protocol Writable {
  func write()
}

protocol ReadSpeakable: Readable {
  func speak()
}

protocol ReadWriteSpeakable: Readable, Writable {
  func speak()
}

class SomeClass: ReadWriteSpeakable {
  func read() {
    print("Read")
  }
  
  func wirte() {
    print("Wirte")
  }
  
  func speak() {
    print("Speak")
  }
}
```
ReadSpeakable 프로토콜은 Readable Protocol을, ReadWriteSpeakable Protocol은 Readable, Writeable Protocol을 상속받았음. ReadWriteSpeakable Protocol을 채택한 SomeClass는 세 프로토콜이 요구하는 read(), write(), speak() 메서드를 모두 구현해야 함.

프로토콜의 상속 리스트에 class키워드를 추가해 프로토콜이 클래스 타입에만 채택될 수 있도록 제한할 수도 있음.
클래스 전용 프로토콜로 제한을 주기 위해서는 프로토콜의 상속 리스트의 맨 처음에 class 키워드가 위치해야 함.

```swift
protocol ClassOnlyProtocol: Class, Readable, Writeable {
  // 추가 요구사항
}

class SomeClass: ClassOnlyProtocol {
  func read() { }
  func write() { }
}

// 오류!! ClassOnlyProtocol 프로토콜은 클래스 타입에만 채택 가능함
struct SomeStruct: ClassOnlyProtocol {
  func read() { }
  func write() { }
}

```
## 프로토콜 조합과 프로토콜 준수 확인

하나의 매개변수가 여러 프로토콜을 모두 준수하는 타입일 때 하나의 매개변수에 여러 프로토콜을 한 번에 조합하여 요구할 수 있음.

SomeProtocol __&__ AnotherProtocol

참고 - __야곰님__ 의 __스위프트 프로그래밍 2판__




















































