
class Foo {
    static var first = 1
    static var second: Int {
        get {
            return 2
        }
        set {
        }
    }
    class var third: Int {
        get {
            return 3
        }
        set {
        }
    }
    class final var fourth: Int {
        get {
            return 4
        }
        set {
        }
    }
}

class Bar: Foo {
    override class var third: Int {
        get {
            return 333
        }
        set {
        }
    }
}

Foo.first
Foo.second
Foo.third
Foo.fourth

Bar.first
Bar.second
Bar.third
Bar.fourth
