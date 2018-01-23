# 클래스와 구조체


## Class & Structures

>"Classes and Structures are general-purpose, flexible constructs that become the building blocks of your program's code.
You define properties and methods to add functionality to your classes and structures by using exactly the same syntax as for constants, variables, and functions."

>클래스와 구조체는 당신의 프로그램코드에 범용적이고 유연한 구조로 만들어진 블록입니다.

>상수, 변수 및 함수와 동일한 문법을 사용하여 클래스 및 구조에 프로퍼티와 메서드를 정의합니다.

<https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html>

* 프로그램 코드 블록의 기본 구조

* 프로퍼티와 메서드를 추가 할 수 있음 (두 구조의 문법 같음)

* 단일 파일에 정의 되며(필수는 아님) 다른 코드에서 자동으로 사용 할수 있음.(접근 제한자에 따라 접근성은 차이가 있음. internal 기본 접근 제한자)

* 인스턴스 생성 및 초기 상태를 설정하기 위해 initializer(초기화 메소드)를 사용하고, 사용자의 니즈에 맞춰 Custom한 initializer를 만들어 사용할 수 있음.

* 둘 구조 모두 메모리에 적재되면 instance라고 불린다.

* 기본 블록에 추가하여 확장된 블록을 추가 할 수 있다. (Extensions)

* Protocol을 채택하여 사용할 수 있다.

### 기본 구조

```swift
class SomeClass {
	// class definition goes here
}

------------------------------------

structure SomeStructure {
	// structure definition goes here
}	
```

### properties

```swift
class VideoMode {
	var resolution = Resolution()
	var interlaced = false
	var frameRate = 0.0
	var name: String?
}
// class는 structure instance를 가질 수 있으나
-----------------------------------------
// struct는 class instance를 가질 수 없다.

sturcture Resolution {
	var width = 0
	var height = 0
}

```

### instance

```swift
// class
let someVideoMode: VideoMode = VideoMode()

------------------------------------------
// structure
let someResolution: Resolution = Resolution()

```

### Properties 접근

```swift
//class
let someVidioMode: VideoMode = VideoMode()
print("VideoMode is \(someVideoMode.resoultion.width)")

-------------------------------------------------------
//structure
let someResolution: Resolution = Resolution()
print("Resolution is \(someResolution.width)")

```
* 닷(.)문법을 통해 접근


### Initialization(초기화)

>Initialization is the process of preparing an instance of a class, structure, or enumeration for use.

>"초기화는 클래스 구조체, 열거형의 인스턴스를 만들기 위한 준비 과정으로 사용됨."

<https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html>

* 인스턴스에 설정된 속성의 초기값을 설정과 초기화하는데 목적이 있음.

* 클래스 및 구조체는 인스턴스로 만들어 질 때 모든 프로퍼티는 적절한 초기값으로 모두 초기화 해야 함.

* 구조체는 자동으로 Memberwiswe Initializers가 만들어 짐.

- 초기화: 갖고 있는 모든 property에 초깃값을 지정해야 함.
- 초기화의 결과물 : instance
- 직전에 해야 할 일 : initialization


### base Initializers

```swift
sturct Subject {
	var name: String
}

class Student {
	var subjects: [Subject] = []
	func addSubject(name: String) {
		let subject = Subject(name: name) // <- Memberwise Initializers
		subjects.append(subject)
	}
}

var wingMan: Person = Person() // <- Initializers
// = var wingMan: Person = Person.init()
```

### Memberwise Initializers

```swift

sturct Subject {
	var name: String
	
	init(name: String) {
		//memberwise Initializer	//<- 개발자가 초기화 메서드를 정의하지 않으면 구조체는 자동으로 모든 프로퍼티를 대응하는 초기화 메서드를 제공한다.
		self.name = name
	}
}

let subject = Subject(name: name) // <- Memberwise Initialzers	
		
```




