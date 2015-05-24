
infix operator >>= {associativity left}
func >>=<A, B>(x: A?, f: A -> B?) -> B? {
    switch x {
    case .None:
        return .None
    case .Some(let x):
        return f(x)
    }
}

struct S<T> {
    let value: T
    
    init(value: T) {
        self.value = value
    }
    
    func f(fail: Bool) -> S<T>? {
        if fail {
            return .None
        } else {
            return self
        }
    }
}

let s = S(value: 7)
//let result = (s.f(false) >>= { $0.f(false) } >>= { $0.f(false) })?.value
let result = (s.f(false) >>= { $0.f(true) } >>= { $0.f(false) })?.value
result
