
struct Stick {
}
func throwStick(stick: Stick)(power: Int) {
    println("\(power)")
}
throwStick(Stick())(power: 4)


class Human {
    let name: String
    init(name: String) {
        self.name = name
    }
}
func identify(human: Human)() {
    println("\(human.name)")
}
identify(Human(name: "Rogelio"))()


class BankAccount {
    var balance = 0.0
    
    func deposit(cash: Double) {
        self.balance += cash
    }
}

let ba = BankAccount()
ba.deposit(100)

let depositInstanceFunction = ba.deposit
depositInstanceFunction(50)
ba

let depositClassFunction = BankAccount.deposit
depositClassFunction(ba)(50)
ba

BankAccount.deposit(ba)(-50)
ba




class Accumulator {
    var sum: Int = 0
    func add(x: Int) {
        self.sum += x
    }
    
    func addReturner(x: Int) -> Int {
        return x + 1
    }
}

let array = [1, 2, 3]
let a = Accumulator()
array.map(a.addReturner)
a.sum
array.map(a.add)
a.sum

array.map({x in
    println("ok")
})

array.map({x -> Void in
    println("ok")
    println("ok ok")
})

array.map({x in
    x + 1
})

array.map({x -> Int in
    x + 1
    return 0
})
