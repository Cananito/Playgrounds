
import Foundation

class A {
}

class B: A {
    @objc func myMethod() -> String {
        return "Yep"
    }
}

var object: AnyObject
object = A()
object.myMethod?()
object = B()
object.myMethod?()
