
protocol A {}

func f(x: [A]) -> Bool {
    return true
}

func g<T: A>(x: [T]) -> Bool {
    return true
}

struct B: A {
}

struct C: A {
}

let b = B()
let bb = B()
let bs = [b, bb]
let c = C()

f([b, bb]) // Homogeneous.
f([b, c]) // Heterogeneous.
g([b, bb]) // Homogeneous, don't need to explicitly be A's.

//f(bs) // Error: Expects explicit A's
//g([b, c]) // Error: Can’t be heterogeneous. Homogeneous.
