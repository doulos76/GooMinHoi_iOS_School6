//: # Basic
//: **Metatype > Type > Instance**
print("\n------------------ [ String Type itself ] ----------------------\n")
/****************************************************
 String Metatype > String Type > String Instance
 
 let str = "String"
 str : struct Stirng의 객체
 String : struct Stirng 자체에 대한 참조, String 메타타입(String.Type)의 객체. String.self 로 접근
 String.Type : String의 메타타입
****************************************************/

//let _ = Swift.NSString.init("initString")   // Error
//Playground execution failed:
//
//error: MyPlaygroundㅡMetatype.playground:7:9: error: module 'Swift' has no member named 'NSString'
//let _ = Swift.NSString.init("initString")   // Error
//        ^~~~~ ~~~~~~~~
let swiftString = Swift.String.init("initString")     // let swiftString: String
let swiftStringSelf = Swift.String.self               // let swiftStringSelf: String.Type
let swiftStringType = type(of: swiftString)           // let swiftStringType: String.Type
let swiftStringMetatype = type(of: Swift.String.self) // let swiftStringMetatype: String.Type.Type
let swiftStringMetatypeType = type(of: swiftStringMetatype) // let swiftStringMetatypeType: String.Type.Type.Type

print(swiftString)
print(swiftStringSelf)
print(swiftStringType)
print(swiftStringMetatype)
print(swiftStringMetatypeType)

//: [Previous](@previous)

//: [Next](@next)
