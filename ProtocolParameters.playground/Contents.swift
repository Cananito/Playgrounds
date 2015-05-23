
// https://youtu.be/Gr6HXCQ9tX8?t=14m56s

protocol P {
    func p() -> String
}

struct S: P {
    func p() -> String {
        return "Struct!"
    }
}

// Slower
func a(x: P) -> String {
    return x.p()
}

// Faster
func b<T: P>(x: T) -> String {
    return x.p()
}

let first = S()

a(first)
b(first)
