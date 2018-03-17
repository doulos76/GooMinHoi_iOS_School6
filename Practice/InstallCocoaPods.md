#CocoaPods

CocoaPods: Ruby 언어를 이용해 만들어진 Package의존성 관리 도구로 지원하는 라이브러리들을 팟(Pod)이라는 개념으로 다룸.

코코아팟이라는 이름은 __코코아 개발 환경 + 라이브러리들__이라는 의미를 나타냄.

## CocoaPods를 이용하여 원하는 Library설치 과정

1. CocoaPods이 설치되어 있지 않은 경우, 코코아팟 프로그램 설치
2. 라이브러리를 사용할 기존 앱 프로젝트 루트 폴더에 Podfile이라는 이름의 파일을 생성함. 이 파일은 코코아팟이 라이브러리 의존성을 파악하는 데 사용됨
3. 원하는 라이브러리의 팟 스펙(Pod Spec)을 찾아 Podfilef에 추가함. 설치 경로, 버전 등의 정보를 나타내는 팟 스펙은 코코아팟 홈페이지(https://cocoapods.org)나 해당 라이브러리의 홈페이지를 통해 확인할 수 있음
4. 팟을 기존 앱 프로젝트에 설치함. 코코아팟은  Podfile에 작성된 라이브러리들의 팟 스펙을 확인해 필요한 라이브러리를 다운받고 설치 진행함.

## CocoaPods 설치 방법
1. Terminal에서 아래 명령을 실행함

	```
	$ sudo gem install cocoapods ↵
	```
	* sudo : 'root 권한으로 실행하라'는 의미
	* gem : 루비 언어에서 사용하는 의존성 패키지 관리 도구를 실행하라는 명령어
	* install cocoapods : 코코아팟을 설치하라는 옵션.

2. Password 입력

	```
	$ sudo gem install cocoapods ↵
	Password:
	```	
	
	비밀번호 입력해야 함. Keyboard 자판을 눌러도 표시가 나오지 않음
	
	
3. install 됨.

	```
	$ sudo gem install cocoapods ↵
	Password:
	Successfully installed cocoapods-1.4.0
	Parsing documentation for cocoapods-1.4.0
	
	...
	
	Done installing documentation for cocoapods after 2 seconds
	1 gem installed
	username-MacBook-Pro:~ userid$
	
	```	


[참고 : 꼼꼼한 재은씨의 스위프트 실전편]