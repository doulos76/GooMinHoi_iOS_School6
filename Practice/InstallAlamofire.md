# Alamofire 설치 방법

## CocoaPods를 이용한 Alamofire설치 방법

1. Xcode로 진행할 Project생성

2. 진행할 Project의 폴더의 경로 확인
	* Example
	
	  ```
	  	/Users/dave/Documents/GooMinHoi_iOS_School6/Practice/OpenSourceTest/
	  ```
	   
 
3. Terminal창에서 진행할 Project의 폴더로 이동함

	```
	$cd /Users/dave/Documents/GooMinHoi_iOS_School6/Practice/OpenSourceTest/
	
	```
 
4. vi editor를 이용해서 __Podfile__생성 및 편집

	```
	source 'https://github.com/CocoaPods/Specs.git'
	platform :ios, '10.0'
	use_frameworks!

	target 'OpenSourceTest' do
        pod 'Alamofire', '~> 4.7'
	end
	```
	* vi에디터 또는 다른 에디터를 사용해도 됨
 
5. 라이브러리 설치
	
	```
	$ pod install↵
	```

 
6. 설치 확인

	![Folder](Practice/folderImage.png "Folder")
	

[참고 : 꼼꼼한 재은씨의 스위프트 실전편]