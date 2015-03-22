
let filteredArray = [1, 2, 3, 4].filter({  $0 != 3 })
filteredArray

let stringsArray = [1, 2, 3, 4].map({ String($0) })
stringsArray

let sum = [1, 2, 3, 4].reduce(0, combine: { $0 + $1 })
sum
