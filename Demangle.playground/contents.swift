
func nameOfType(type: Any) -> String? {
    let demangled = _stdlib_getDemangledTypeName(type)
    let a = split(demangled.characters) { $0 == "." }.last
    return String(a)
}

class Rogelio {
}

let rogelio = Rogelio()
let className = nameOfType(rogelio)