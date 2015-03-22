
// Source: http://www.fewbutripe.com/swift/math/2015/01/06/proof-in-functions.html
// Solution: http://www.fewbutripe.com/swift/math/2015/01/13/solutions-to-proof-in-functions.html

/*
func f<A> (x: A) -> A {
    return x
}

func f<A, B> (x: A, y: B) -> A {
    return x
}

func f<A, B>(x: A, g: A -> B) -> B {
    return g(x)
}

func f<A, B, C> (g: A -> B, h: B -> C) -> A -> C {
    return { x in
        return h(g(x))
    }
}

func f<A, B>(x: A) -> Or<A, B> {
    return Or.Left(x)
}

func f<A, B, C>(x: Or<A, B>, g: A -> C, h: B -> C) -> C {
    switch x {
    case .Left(let a):
        return g(a)
    case .Right(let b):
        return h(b)
    }
}

func deMorgan<A, B>(f: Not<Or<A, B>>) -> And<Not<A>, Not<B>> {
    return And<Not<A>, Not<B>>(
        left: Not<A>(not: { a in f.not(.Left(a)) }),
        right: Not<B>(not: { b in f.not(.Right(b)) })
    )
}

func deMorgan<A, B>(f: And<Not<A>, Not<B>>) -> Not<Or<A, B>> {
    return Not<Or<A, B>> { (x: Or<A, B>) in
        switch x {
        case let .Left(a):
            return f.left.not(a)
        case let .Right(b):
            return f.right.not(b)
        }
    }
}
*/


// 1.) Two of the following functions can be implemented and one cannot. Provide the implementations and explain why the un-implementable one is different.
func f<A, B>(x: A) -> B -> A {
    return { (b: B) in
        return x
    }
}
func f<A, B>(x: A, y: B) -> A {
    return x
}
//func f<A, B>(f: A -> B) -> A {
//}

// 2.) Find an implementation of:
func f<A, B, C>(f: A -> B) -> ((C, B) -> C) -> ((C, A) -> C) {
    return { cbc in
        return { ca in
            let c = ca.0
            let b = f(ca.1)
            let tuple = (c, b)
            return cbc(tuple)
        }
    }
}

// 3.) Find an implementation of:
func f<A, B, C>(x: A, g: A -> B, h: A -> C) -> (B, C) {
    let b = g(x)
    let c = h(x)
    return (b, c)
}

// 4.) Prove the theorem: P ⇒ ¬(¬P) by implementing the function:
func f<A>(x: A) -> Not<Not<A>> {
    return Not<Not<A>>(not: { na in
        return na.not(x)
    })
}

// 5.) Try to prove the converse: ¬(¬P) ⇒ P by implementing the function:
//func f<A>(x: Not<Not<A>>) -> A {
//}

// 6.) The following is a function that will “curry” another function:
func curry<A, B, C>(f: (A, B) -> C) -> A -> B -> C {
    return { a in
        return { b in
            return f(a, b)
        }
    }
}
// That is, it takes a function of two parameters and turns it into a function of one parameter that returns a function of one parameter. Describe what this function represents in the world of formal logic.
// A: Given that “P and Q implies R”, it is true that “if P is true then Q implies R.”


// 7.) If the type with no values represents false in a type system, what type would represent true?
// A: Not<Nothing>

// 8.) The type Not<A> cannot be instantiated for nearly every type A. However, there is exactly one type for which you can create a value in Not<A>. What is that type and how does it relate to the type discovered in exercise #7.


enum Nothing {
}

struct Not<A> {
    let not: A -> Nothing
}

typealias Something = Not<Nothing>

enum Or<A, B> {
    case Left(A)
    case Right(B)
}

struct And<A, B> {
    let left: A
    let right: B
    init(left: A, right: B) {
        self.left = left
        self.right = right
    }
}

