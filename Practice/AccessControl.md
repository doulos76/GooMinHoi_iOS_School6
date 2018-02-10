# 접근 제어 #

## 접근 수준 ##

* 외부 모듈에서의 접근을 제어하는 수단.
* 캡슐화, 은닉화를 위해 사용

## 모듈 & 소스파일

* 모듈: 배포할 코드의 묶음 단위, 통상 framework나 library, appication이 module의 단위가 될 수 있음
* Source File: 하나의 swift source code file

## 접근 제어 ##
* Module 밖
	* Open (개방 접근 수준): module외부까지 접근 가능
	* public (공개 접근 수준):  module외부까지 접근 가능
*  Module 안
	* internal(내부 접근 수준): module 내부에서 접근 가능. 기본 지정값.
	* fileprivate (파일외 비공개) : 파일 내부에서만 접근 가능
* 비공개
	* private (비공개) : 기능 정의 내부에서만 가능

- extention: Swift4에서 추가됨, Class의 확장

## Open vs Public : 상속의 유무
> 상속의 유무로 판단
> 외부에 있는 class를 내가 상속을 받을 수 있는가?
> open : 상속 가능
> public : 상속 불가능

* Open을 제외한 다른 모든 접근 수준의 Class는 그 Class가 정의된 모듈 안에서만 상속될 수 있음
* Open을 제외한 다른 모든 접근수준의 class 멤버는 그 멤버가 정의된 모듈 안에서만 재정의 될 수 있음
* Open수준의 class는 그 class가 정의된 모듈 밖의 다른 모듈에서도 상속되고, 재정의 될 수 있다.
* Class를 open으로 명시하는 것은 그 class를 다른 모듈에서도 부모클래스로 사용살 수 있다는 것.

## Example

```swift
public class SomePublicCalss {
    public var somePublicProperty = 0
    var someInternalPeroperty = 0
    fileprivate func someFileProvateMethod() {}
    private func somePrivateMethod() {}
}

class SomeInternalClass {
    var someInternalProperty = 0
    fileprivate func someFilePrivateMethod() {}
    private func somePrivateMethod() {}
}

fileprivate class SomeFilePrivateClass {
    func someFilePrivateMethod() {}
    private func somePrivateMethod() {}
}

private class SomePrivateClass {
    func somePrivateMethod() {}
}

class TestClass: SomePublicCalss {
    
}

//class TestClass2: SomePrivateClass {
//
//}
//-> Error 발생: Privat class는 상속 받을 수 없음.

```