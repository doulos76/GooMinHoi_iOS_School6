# Singleton Pattern

## Singleton Pattern

1. Singleton : Application 전 영역의 걸쳐 하나의 class의 __단 하나의__ 인스턴스만(객체)을 생성하는 것을 Singleton Pattern이라함
2. 사용 이유 : Application 내부에서 유일하게 하나만 필요한 객체에서 사용 (Setting, Data 등)
3. Class method로 객체를 만들며 static을 이용해서 단 1개의  instance만 만듦
4. App 내에서 공유하는 객체를 만들 수 있음

## Singleton Pattern Instance 만들기

```swift
class SingletonClass {
	// MARK: Shard Instance
	static var sharedInstance: SingletonClass = SingletonClass()
	
	// Can't init is sington
	private init() {
		// 초기화가 필요하면 private로 생성
	}
}
```

## Singleton Pattern Example

```swift
// screen 정보를 가지고 있는 object
let screen = UIScreen.main

// 사용자 정보를 저장하는 object
let data = UserDefaults.standard

// Application object
let app = UIApplication.shared

// file system 정보를 가지고 있는 object
let fileManager = FileManager.default
```
