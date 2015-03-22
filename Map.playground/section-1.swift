
extension Array {
    func myMap(iterator: ((T) -> T)) -> [T] {
        var newArray = Array<T>()
        for element: T in self {
            newArray.append(iterator(element))
        }
        return newArray
    }
}

var array = [1, 2]
var terseMapArray = array.map({ $0 + 1 })
var longMapArray = terseMapArray.map({ (element: Int) -> Int in
    return element + 1
})

var myMapArray = array.myMap({ (element) -> Int in
    return element + 1
})
myMapArray
