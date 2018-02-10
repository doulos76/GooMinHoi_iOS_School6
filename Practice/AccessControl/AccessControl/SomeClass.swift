//
//  SomeClass.swift
//  AccessControl
//
//  Created by 구민회 on 2018. 1. 26..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

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
