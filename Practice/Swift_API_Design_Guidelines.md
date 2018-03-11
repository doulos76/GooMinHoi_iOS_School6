# Swift API Design Guidelines

## Table of Contents

### 기본 개념
* 가장 중요한 목표 : __사용 시점에서의 명료성__
	* 메서드, 속성과 같은 개체들은 한번만 선언되지만, 반복적으로 사용됨.
	* API는 이런 개체들을 이해하기 쉽고 간결하게 만드는데 중저을 두고 작성해야 함.
	* API 설계에 대한 평가는 선언부를 읽는 건만으로 충분하지 않음.
	* 사용사례에서 문맥상 명확하게 이해되는지를 기준으로 평가해야 함.
* __명료성은 간결성보다 더 중요함__
	* Swift code를 간결하게 작성할 수 있지만, 문자들 몇 개만 사용해서 가능한 가장 적은 양의 코드를 작성하는 것이 목표가 아님.
	* Swift code의 간결함은 강력한 type system과 boilerplate 코드를 줄여주는 기능들이 제공하는 부수적인 효과
* 모든 선언문에 __주석을 작성해야 함__.
	* API를 설명하는 주석 문서를 작성하면서 얻은 통찰력은 API설계에 지대한 영향을 미칠 수 있음.
	* 다음으로 미루지 말고 꼭 주석을 달아야 함.

		```
		간단한 용어로 API 기능을 설명하지 못한다면, __당신의 API설계는 문제가 있을 가능성이 높습니다__
		```
		
	* SWift에서 지원하는 Markdown 언어를 사용하라.
	* 선언된 개체(entitiy)를 설명하는 __요약으로 시작__ 하라. API는 선언과 요약을 통해 완전히 이해되는 경우가 많음.

		```swift
		/// 같은 요소를 포함하는 `self`의 "view"를 역순으로 반환
		func reversed() -> ReverseCollection
	
		```
		
		* __요약에 초첨을 맞추라__. 요약은 매우 중요한 부분임. 많은 우수한 코드 주석은 훌륭한 요약문을 가지고 있음.
		* 가능하면 __한 개의 절을 사용하고__, 마침표로 끝내라. 완전한 문장을 사용하지 말라.
		* __함수 또는 메소드가 어떤 일을 하는지, 어떤 것을 반환하는지 설명하고__, null  효과와 ```Void``` 반환은 설명을 생략하라.

			```swift
			/// `self` 시작부분에 `newHead`를 삽입.
			mutating func prepend(newHead: Int)
			
			///  `self`의 요소를 동반하는 `head` 가 포함된 `List`를 반환.
			func prepending(head: Element) -> List
			
			/// 비어있지 않다면 	`self`의 첫 번째 요소를 제거 및 반환하고; 비어 있다면 `nil`을 반환.
			mutating func popFirst() -> Element?
			
			```
			
			주의 : 자주 사용되지는 않지만, ```poopFirst```의 경우처럼 세미콜론을 사용해 여러 절로 이루어진 요약문을 작성할 수도 있음.
			
		* __subscript__ 가 어떤 것에 _접근_ 하는지 설명함
		
			```swift
			/// `index`번째 요소에 __접근__.
			subscript(index: Int) -> ELement { get set }
			
		
			```
				
		* __initializer가 무엇을 _생성_ 하는지 설명합니다.__


			```swift
			/// `x`를 `n`번 반복하는 인스턴스를 생성
			init(count n: Int, repeatedElement x: Element)
		
			```
		
 		* 그 외의 경우, __선언된 개체_가_ 무엇인지 설명함.__

			```swift
			/// 어떤 위치에서든 똑같이 효율적으로 삽입/제거할 수 있는 컬렉션.
			struct List {
			
				/// `self`의 첫 번째 요소, 또는 else가 비어 있다면 `nil`
				var first: Element?
				...
			
			```
			
	* 경우에 따라, 여러 절과 글 머리 기호르르 사용할 수 있음. 공백 줄로 절을 나누고 완전한 문장을 사용함.

		```swift
		
		/// 표준 출력에 `items` 각 요소의 텍스트 표현을 작성합니다. ⟵ 요약
		///                                             ⟵ 빈 줄
		/// 각 요소인 `x`의 텍스트 표현은 `String(x)` 표현식으로  ⟵ 추가 설명
		/// 제공됩니다.
		///
		/// - 매개변수 seperator: 요소 사이에 출력되는 텍스트
		/// - 매개변수 terminator: 끝부분에 출력되는 텍스트
		///
		/// - 주의: 끝부분에 줄 바꿈을 출력하지 않으려면
		///     `terminator: """`를 전달하세요.
		///
		/// - 참조: `CustomDebugStringConvertibles`,
		///        `CustomStringConvertible`, `debugPrint`.
		public func print {
   			items: Any..., seperator: String = " ", terminator: String = "\n"
		}
		
		```
	
	
		* 요약문 외에 추가 정보를 제공할 때에는 많은 사람들이 이해할 수 있게 __symbol문서 마크업__ 요소들을 사용하라.
		* symbol 커맨드 구문을 익히고 활용하라. Xcode와 같이 인기 잇는 개발 도구는 다음 키ㅝ드로 시작하는 글 머리 기호(예: - Note)를 특별하게 취급함.

		
	
	
	

