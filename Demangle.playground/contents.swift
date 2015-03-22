import Foundation

func nameOfType(type: Any) -> String {
    let demangled = _stdlib_getDemangledTypeName(type)
    return demangled.componentsSeparatedByString(".").last!
}

class Rogelio {
}

let rogelio = Rogelio()
let className = nameOfType(rogelio)
