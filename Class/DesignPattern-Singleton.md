# Design Pattern #

## 단일체(Singleton) ##
어떤 클래스의 인스턴스는 오직 하나임을 보장하며, 이 인스턴스에 접근할 수 있는 전역적인 접촉점을 제공하는 패턴임.

1. Singleton? Application 전 영역의 걸쳐 하나의 클래스의 __단 하나__의 인스턴스만을 생성하는 것을 singleton pattern이라 함.
2. 사용이유 : App. 내부에서 유일하게 하나만 필요한 객체에서 사용(예- Setting, Data 등)
3. Class method로 객체를 만들며 static을 이용해서 단 1개의 인스턴스만 만듦. (static 사용으로 메모리적인 issue가 있을 수 있음)
4. App 내에서 공유하는 객체를 만들 수 있음.

### 의도 ###
오직 한 개의 클래스 인스턴스만을 갖도록 보장하고, 이에 대한 전역적인 접근점을 제공함.
### 동기 ###
어떤 클래스는 정확히 하나의 인스턴스만을 갖도록 하는 것이 좋음.

(예) 시스템에 많은 프린터가 있다 하더라도 프린터 스풀은 오직 하나여야 함.
파일 시스템, 윈도우 관리자도 오직 하나여야 함.
한 회사에서는 하나의 회계 시스템만 운영.

How? 전역변수로?

But! 클래스 자신이 자기의 유일한 인스턴스로 접근하는 방법을 자체적으로 관리하는 것.
이 클래스는 또 다른 인스턴스가 생성되지 않도록 할 수 있고(새로운 객체 생성에 대한 요청을 가로채는 방법을 씀),
클래스 자신이 그 인스턴스에 대한 접근 방법을 제공.

==> 단일체 패턴.

### 활용성 ###

* 클래스의 인스턴스가 오직 하나여야 함을 보장하고, 잘 정의된 접근점으로 모든 사용자가 접근할 수 있도록 해야 할 때.
* 유일한 인스턴스가 서브 클래싱으로 확장되어야 하며, 사용자는 코드의 수정 없이 확장된 서브 클래스의 인스턴스를 사용할 수 있어야 할 때


### Singleton Pattern Instance 만들기###

example : UserDefault, Notification, FileManager, UIScreen, UIApplication

```swift
class SingletonClass {
	// MARK: Shared Instance
	static var sharedInstance: SingletonClass = SingletonClass()
	
	// Can't init is singleton
	private init*(
	{
		// 초기화가 필요하면 private로 생성
	}
}
```

### Singleton Pattern Example ###

```swift
// 스크린 정보를 가지고 있는 객체
let screen = UIScreen.main

// 사용자 정보를 저장하는 객체
let data = UserDefaults.standard

// 어플리케이션 객체
let app = UIApplication.shared

// 파일 시스템 정보를 가지고 있는 객체
let fileManager = FileManager.default

```
### 왜 싱글턴 패턴을 사용하는 것일까? ###

app 전체를 통해서 1개만 사용해야 할 경우 사용

