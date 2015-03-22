import Cocoa

//let height = 480
//let width = 320

let height = 960
let width = 640

//let height = 1136
//let width = 640

var aspectRatio = ""

if (height == width) {
    aspectRatio = "1:1"
} else {
    var dividend: Int
    var divisor: Int
    
    if (height > width) {
        dividend = height
        divisor = width
    } else {
        dividend = width
        divisor = height
    }
    
    var greatestCommonDivisor = -1
    while (greatestCommonDivisor == -1) {
        var remainder = dividend % divisor
        if (remainder == 0) {
            greatestCommonDivisor = divisor
        } else {
            dividend = divisor
            divisor = remainder
        }
    }
    
    var horizontalRatio = width / greatestCommonDivisor
    var verticalRatio = height / greatestCommonDivisor
    
    aspectRatio = "\(horizontalRatio):\(verticalRatio)"
}

println(aspectRatio)
