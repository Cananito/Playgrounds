
// Source: https://twitter.com/kongtomorrow/status/593945217482366976

import Foundation

var mutableArray = NSMutableArray()

func firstObjectIntegerValue() -> Int? {
    return mutableArray.firstObject.map { $0.integerValue }
}
mutableArray.addObject(NSNumber(integer: 3))
let a = firstObjectIntegerValue()
mutableArray.removeAllObjects()


func firstObjectStringValue() -> String? {
    return mutableArray.firstObject.map { $0.stringValue }
}
mutableArray.addObject(NSNumber(integer: 4))
let b = firstObjectStringValue()
mutableArray.removeAllObjects()


func firstObjectFireDate() -> NSDate? {
    return mutableArray.firstObject.map { $0.fireDate }
}
//backing.addObject(NSDate())
//let c = firstObjectFireDate() // Runtime Error
//backing.removeAllObjects()


@objc class A {
    @objc func objcFunc() -> Int {
        return 2
    }
    
    dynamic func dynamicFunc() -> Int {
        return 3
    }
    
    func normalFunc() -> Int {
        return 4
    }
}
let d: AnyObject = NSString()
//let e = d.objcFunc() // Runtime Error
//let f = d.dynamicFunc() // Runtime Error
//let g = d.normalFunc() // Compile Error
func firstObjectObjcFunc() -> Int? {
    return mutableArray.firstObject.map { $0.objcFunc() }
}
mutableArray.addObject(A())
let h = firstObjectObjcFunc()
func firstObjectDynamicFunc() -> Int? {
    return mutableArray.firstObject.map { $0.dynamicFunc() }
}
let i = firstObjectDynamicFunc()
func firstObjectNormalFunc() -> Int? {
    return mutableArray.firstObject.map { $0.normalFunc() }
}
let j = firstObjectNormalFunc()

mutableArray.removeAllObjects()
mutableArray.addObject("Hello")
//let k = firstObjectObjcFunc() // Runtime Error
//let l = firstObjectDynamicFunc() // Runtime Error
//let m = firstObjectNormalFunc() // Runtime Error

