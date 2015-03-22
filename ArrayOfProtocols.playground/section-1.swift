
protocol Laughable {
    func laugh() -> String
}

struct Human: Laughable {
    func laugh() -> String {
        return "hahaha"
    }
}

struct Animal: Laughable {
    func laugh() -> String {
        return "..."
    }
}

let first = Human()
let second = Animal()

let array: [Laughable] = [first, second]

for thing in array {
    let l = thing.laugh()
}
