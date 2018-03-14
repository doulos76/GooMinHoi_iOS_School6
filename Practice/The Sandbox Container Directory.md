
# The Sandbox Container Directory

## App Sandboxing

- Sandboxing your app is a __great way to protect systems__ and user by __limiting the privileages of an app__ to its intended functionality, __increasing the difficulty for malicious software__ to compromise your users' systems

## iOS App Sandboxes

*  App
  * MyApp.app
  * Documents
  * Library
  * tmp

## Sandbox Containers
* MyApp -> Sandbox
  * Bundle Container
    	* MyApp.app
  * Data Container
    	* Documents
    	* Library
    	* Temp
  * iCloud Cntainer

  
## Bundle

```swift
Bundle.main.bundlePath
```
* File system 내 하나의 directory
* 실행가능(Executable) file, Info.plist, 각종 Resources (image, sound, strings등) 등을 함께 그룹화.
* Codesign Tool이 Signing 을 위해 Bundle Container를 불러와 Code Seal적용
* Static Library - Executable file에 통합 컴파일
* Dynamic Library 및 Framework는 Frameworks Directory에 존재
* Read Only, 수정이 필요한 경우  Data Container로 옮겨서 작업
* iTunes, iCloud에 백업되지 않음.
  



