
func greet(name: String) -> String {
    return "Hello " + name
}

func htmlBold(f: String -> String) -> String -> String {
    return { s in
        return "<b>" + f(s) + "</b>"
    }
}

let normal = greet("Rogelio")
let bold = htmlBold(greet)("Rogelio")
