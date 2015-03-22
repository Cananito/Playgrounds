
class Parent {
    let name: String
    required init(name: String) {
        self.name = name
    }
}

class Child: Parent {
    let faveNumber: Int
    required init(name: String, faveNumber: Int) {
        self.faveNumber = faveNumber
        super.init(name: name)
    }
    required convenience init(name: String) {
        self.init(name: name, faveNumber: 0)
    }
}

let a = Parent(name: "A")
let b = Parent.self
let c = b(name: "C")
let d = c.dynamicType(name: "D")

let e = "E"
let f = e.dynamicType
let g = f("something")
let h = String.self
let i = h("ok")

let startIndex = g.startIndex
let endIndex = g.endIndex

let newEndIndex = advance(startIndex, countElements(g))
let newStartIndex = advance(endIndex, -countElements(g))

