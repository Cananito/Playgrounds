
func nameOfType(type: Any) -> String? {
    let demangled = _stdlib_getDemangledTypeName(type)
    return split(demangled) { $0 == "." }.last
}

class Rogelio {
}

let rogelio = Rogelio()
let className = nameOfType(rogelio)
