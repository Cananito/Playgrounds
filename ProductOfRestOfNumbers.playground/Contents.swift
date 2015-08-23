
/*

1. Write a function which will receive an array of arbitrary size, containing numbers as its elements and return an array of equal length. In the return array, element at given index will be the product of all elements in the input array except the element at that index in the input array.

Input [1,2,3,4]
Output: [24,12,8,6]

2. Prevent zeros from zero-ing everything.

Input [1,0,3,4]
Output: [12,0,4,3]

3. Multiple zeros do set everything to zero.

Input [1,0,0,4]
Output: [0,0,0,0]

*/

func productOfRestOfNumbers(numbers: [Int]) -> [Int] {
    var result = [Int]()
    var zeroFreeProduct = 1
    var product = 1
    var zeros = 0
    
    for number in numbers {
        if number == 0 {
            zeros++
        } else {
            zeroFreeProduct = zeroFreeProduct * number
        }
        product = product * number
    }
    
    for number in numbers {
        if number == 0 {
            result.append(0)
        } else if zeros > 1 && number != 0 {
            result.append(0)
        } else {
            result.append(zeroFreeProduct / number)
        }
    }
    
    return result
}

let a = [1, 2, 3, 4]
let ap = productOfRestOfNumbers(a)

let b = [1, 0, 3, 4]
let bp = productOfRestOfNumbers(b)

let c = [1, 0, 0, 4]
let cp = productOfRestOfNumbers(c)
