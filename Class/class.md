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
